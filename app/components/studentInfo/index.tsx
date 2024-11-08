import axios from 'axios'
import { useEffect, useState } from 'react'
import { Student } from '@prisma/client'
import React from 'react'
import Pagination from '@/app/components/Pagination'

export default function StudentInfo() {

  const [students, setStudents] = useState<Student[]>([])
  const [pagination, setPagination] = useState({
    currentPage: 0,
    totalPages: 0,
    totalStudents: 0,
    limit: 0
  })
  const [s_name, setS_name] = useState('')
  const [s_number, setS_number] = useState('')
  const [departments, setDepartments] = useState([''])
  const [classes, setClasses] = useState([''])

  async function getAllStudents(page: number = 1, limit: number = 20) {
    const response = await axios.get('/api/student/getAllStudent?' + 'page=' + page + '&limit=' + limit)
    setStudents(response.data.data.students)
    setPagination(response.data.data.pagination)

    const departments = Array.from(new Set(
      response.data.data.students.map(
        (student: Student) => student.student_department
      )
    )) as string[]
    setDepartments(departments)

    const classes = Array.from(new Set(
      response.data.data.students.map(
        (student: Student) => student.class_name
      )
    )) as string[]
    setClasses(classes)
  }

  async function getStudent(name: string, number: string) {
    let response
    if (name && number) {
      response = await axios.get(`/api/student/getStudent?student_name=${name}&student_number=${number}`)
    }
    else if (name) {
      response = await axios.get(`/api/student/getStudent?student_name=${name}`)
    }
    else {
      response = await axios.get(`/api/student/getStudent?student_number=${number}`)
    }
    if (response.data.status === 'error') setStudents([])
    else setStudents(response.data.data.students)
    setPagination(response.data.data.pagination)
    setS_number('')
    setS_name('')
  }

  useEffect(() => {
    getAllStudents()
  }, [])

  return (
    <>
      <div className='mb-5'>
        <p className='pl-3 mb-2'>输入姓名或学号搜索指定学生</p>
        <input
          className="mr-4 px-2 py-1 rounded-md border border-gray-200 focus:outline-none shadow-lg bg-yellow-150"
          value={s_name}
          onChange={e => setS_name(e.target.value)}
          placeholder="输入姓名"
        />
        <input
          className="mr-5 px-2 py-1 rounded-md border border-gray-200 focus:outline-none shadow-lg bg-none bg-yellow-150"
          value={s_number}
          onChange={e => setS_number(e.target.value)}
          placeholder="输入学号"
        />
        <button className='mr-3 text-white hover:cursor-pointer bg-amber-700 px-3 py-1 rounded-md' disabled={s_name === '' && s_number === ''} onClick={() => getStudent(s_name, s_number)}>查询</button>
        <button onClick={() => getAllStudents()}>返回</button>
      </div>
      <StudentTable students={students} departments={departments} classes={classes} setStudents={setStudents} setPagination={setPagination} />
      <Pagination currentPage={pagination.currentPage} totalPages={pagination.totalPages} changePage={getAllStudents} />
    </>
  )
}

function StudentTable(
  { students, departments, classes, setStudents, setPagination }:
    { students: Student[], departments: string[], classes: string[], setStudents: Function, setPagination: Function }
) {

  const [departmentDropdown, setDepartmentDropdown] = useState(false);
  const [classDropdown, setClassDropdown] = useState(false);
  const [selectedDepartment, setSelectedDepartment] = useState<string | null>(null);
  const [selectedClass, setSelectedClass] = useState<string | null>(null);

  // 切换显示/隐藏下拉菜单
  const toggleDepartmentDropdown = () => setDepartmentDropdown(!departmentDropdown);
  const toggleClassDropdown = () => setClassDropdown(!classDropdown);

  async function filteStudents(department: string, className: string) {
    let response
    if (department && className) {
      response = await axios.get('/api/student/filtedStudents?department=' + department + '&class=' + className)
    } else if (department) {
      response = await axios.get('/api/student/filtedStudents?department=' + department)
    } else if (className) {
      response = await axios.get('/api/student/filtedStudents?class=' + className)
    } else return
    if (response.data.status === 'error') setStudents([])
    else setStudents(response.data.data.students)
    setPagination(response.data.data.pagination)
  }

  useEffect(() => {
    filteStudents(selectedDepartment || '', selectedClass || '');
  }, [selectedDepartment, selectedClass]);

  return (
    <table className="table-auto w-full mx-auto">
      <thead className="bg-yellow-100">
        <tr className="h-10">
          <th className="relative">
            <button onClick={toggleDepartmentDropdown} className="hover:cursor-pointer">
              系部 ▼
            </button>
            {departmentDropdown && (
              <div className="absolute top-full rounded-md left-0 bg-yellow-100 text-black border shadow-lg mt-1 w-24">
                <ul>
                  {departments.map((department) => (
                    <li
                      key={department}
                      onClick={() => setSelectedDepartment(department)} // 点击时设置选中的department
                      className={`rounded-md w-full cursor-pointer text-center py-2 ${
                        selectedDepartment === department ? 'bg-amber-700 text-white' : '' // 选中时的样式
                      }`}
                    >
                      {department}
                    </li>
                  ))}
                </ul>
              </div>
            )}
          </th>
          <th>专业</th>
          <th className="relative">
            <button onClick={toggleClassDropdown} className="hover:cursor-pointer">
              班级 ▼
            </button>
            {classDropdown && (
              <div className="absolute top-full rounded-md left-0 bg-yellow-100 text-black border shadow-lg mt-1 w-24">
                <ul>
                  {classes.map((classItem) => (
                    <li
                      key={classItem}
                      onClick={() => setSelectedClass(classItem)}
                      className={`rounded-md w-full cursor-pointer text-center py-2 ${
                        selectedClass === classItem ? 'bg-amber-700 text-white' : ''
                      }`}
                    >
                      {classItem}
                    </li>
                  ))}
                </ul>
              </div>
            )}
          </th>
          <th>姓名</th>
          <th>性别</th>
          <th>学号</th>
          <th></th>
        </tr>
      </thead>
      <tbody className="text-center">
      {students.map((student) => (
        <tr key={student.student_id} className="h-12">
          <td>{student.student_department}</td>
          <td>{student.student_major}</td>
          <td>{student.class_name}</td>
          <td>{student.student_name}</td>
          <td>{student.student_gender === 'man' ? '男' : '女'}</td>
          <td>{student.student_number}</td>
          <td>
            <button className="mr-3.5 hover:text-red-700">操作</button>
            <button className="hover:text-indigo-700">详情</button>
          </td>
        </tr>
        ))}
      </tbody>
    </table>
  );
}