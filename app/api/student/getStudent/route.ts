import { NextRequest, NextResponse } from 'next/server'
import prisma from "@/app/api/prisma"

/**
 * 通过名字或学号查询学生信息
 * <string>student_name || <string>student_number
 * 
 * 返回体
 * {
 *   status: 'error' || 'success',
 *   code: 200,
 *   data: {
 *     students,
 *     pagination: {
 *       totalStudents, // 学生总数
 *       totalPages, // 总页数
 *       currentPage: page, // 当前页
 *       limit // 单页显示量
 *     }
 *   },
 *   errors: 'no such student' || null,
 *   message: 'Cannot find this student in database' || 'Successfully find the student in database',
 * }
 */

export async function GET(request: NextRequest) {

  const params = request.nextUrl.searchParams

  // 判断传入的参数有谁，分别调用不同的方法
  if (params.get('student_name') && params.get('student_number')) {

    const name = params.get('student_name') as string
    const number = params.get('student_number') as string

    return await checkBy2(name, number)
  }
  else if (params.get('student_name')) {

    const name = params.get('student_name') as string

    return await checkByName(name)
  }
  else {

    const number = params.get('student_number') as string

    return await checkByNumber(number)
  }
}

async function checkByName(name: string) {
  const students = await prisma.student.findMany({
    where: {
      student_name: name
    }
  })
  if (students.length < 1) {
    return NextResponse.json({
      status: 'error',
      code: 200,
      data: {
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: 'no such student',
      message: 'Cannot find this student in database'
    })
  }
  else {
    return NextResponse.json({
      status: 'success',
      code: 200,
      data: {
        students,
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: null,
      message: 'Successfully find the student in database',
    })
  }

}

async function checkByNumber(number: string) {
  const students = await prisma.student.findMany({
    where: {
      student_number: number
    }
  })
  if (students.length < 1) {
    return NextResponse.json({
      status: 'error',
      code: 200,
      data: {
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: 'no such student',
      message: 'Cannot find this student in database'
    })
  }
  else {
    return NextResponse.json({
      status: 'success',
      code: 200,
      data: {
        students,
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: null,
      message: 'Successfully find the student in database',
    })
  }
}

async function checkBy2(name: string, number: string) {
  const students = await prisma.student.findMany({
    where: {
      student_name: name,
      student_number: number
    }
  })
  if (students.length < 1) {
    return NextResponse.json({
      status: 'error',
      code: 200,
      data: {
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: 'no such student',
      message: 'Cannot find this student in database'
    })
  }
  else {
    return NextResponse.json({
      status: 'success',
      code: 200,
      data: {
        students,
        pagination: {
          totalStudents: 0,
          totalPages: 1,
          currentPage: 1,
          limit: 0
        }
      },
      errors: null,
      message: 'Successfully find the student in database',
    })
  }
}
