DELETE FROM Student;
DELETE FROM Class;
DELETE FROM Teacher;
DELETE FROM User;
DELETE FROM Department;

-- 插入 Department 表数据
INSERT INTO Department (department_name, department_students, department_classes) VALUES
    ('计算机科学系', 0, 0),
    ('机械工程系', 0, 0),
    ('电子工程系', 0, 0),
    ('农学系', 0, 0),
    ('经济管理系', 0, 0),
    ('动物科学系', 0, 0),
    ('体育系', 0, 0);

-- 插入 User 表数据
INSERT INTO User (user_role, department_name, user_name, user_account, user_password) VALUES
    ('admin', NULL, '管理员666', 'admin01', 'password123'),
    ('teacher', '计算机科学系', '陈电脑', 'diannao01', 'password123'),
    ('guider', '计算机科学系', '叶电脑', 'diannao02', 'password123'),
    ('teacher', '机械工程系', '陈机械', 'jixie01', 'password123'),
    ('guider', '机械工程系', '叶机械', 'jixie02', 'password123'),
    ('teacher', '电子工程系', '陈电子', 'dianzi01', 'password123'),
    ('guider', '电子工程系', '叶电子', 'dianzi02', 'password123'),
    ('teacher', '农学系', '陈种地', 'nongxue01', 'password123'),
    ('guider', '农学系', '叶种地', 'nongxue02', 'password123'),
    ('teacher', '经济管理系', '陈经管', 'jingguan01', 'password123'),
    ('guider', '经济管理系', '叶经管', 'jingguan02', 'password123'),
    ('teacher', '动物科学系', '陈动科', 'dongke01', 'password123'),
    ('guider', '动物科学系', '叶动科', 'dongke02', 'password123'),
    ('teacher', '体育系', '陈体育', 'tiyu01', 'password123'),
    ('guider', '体育系', '叶体育', 'tiyu02', 'password123');
-- 插入 Class 表数据
INSERT INTO Class (class_name, class_students, class_master, class_guider, start_date, department_name) VALUES
    ('计算机一班', 0, '陈电脑', '叶电脑', '2018-09-01', '计算机科学系'),
    ('计算机二班', 0, '王电脑', '叶电脑', '2019-09-01', '计算机科学系'),
    ('计算机三班', 0, '林电脑', '叶电脑', '2020-09-01', '计算机科学系'),
    ('计算机四班', 0, '张电脑', '叶电脑', '2021-09-01', '计算机科学系'),
    ('计算机五班', 0, '李电脑', '叶电脑', '2022-09-01', '计算机科学系'),
    ('机械一班', 0, '陈机械', '叶机械', '2018-09-01', '机械工程系'),
    ('机械二班', 0, '王机械', '叶机械', '2019-09-01', '机械工程系'),
    ('机械三班', 0, '林机械', '叶机械', '2020-09-01', '机械工程系'),
    ('机械四班', 0, '张机械', '叶机械', '2021-09-01', '机械工程系'),
    ('机械五班', 0, '李机械', '叶机械', '2022-09-01', '机械工程系'),
    ('电子一班', 0, '陈电子', '叶电子', '2018-09-01', '电子工程系'),
    ('电子二班', 0, '王电子', '叶电子', '2019-09-01', '电子工程系'),
    ('电子三班', 0, '林电子', '叶电子', '2020-09-01', '电子工程系'),
    ('电子四班', 0, '张电子', '叶电子', '2021-09-01', '电子工程系'),
    ('电子五班', 0, '李电子', '叶电子', '2022-09-01', '电子工程系'),
    ('农学一班', 0, '陈种地', '叶种地', '2018-09-01', '农学系'),
    ('农学二班', 0, '王种地', '叶种地', '2019-09-01', '农学系'),
    ('农学三班', 0, '林种地', '叶种地', '2020-09-01', '农学系'),
    ('农学四班', 0, '张种地', '叶种地', '2021-09-01', '农学系'),
    ('农学五班', 0, '李种地', '叶种地', '2022-09-01', '农学系'),
    ('经管一班', 0, '陈经管', '叶经管', '2018-09-01', '经济管理系'),
    ('经管二班', 0, '王经管', '叶经管', '2019-09-01', '经济管理系'),
    ('经管三班', 0, '林经管', '叶经管', '2020-09-01', '经济管理系'),
    ('经管四班', 0, '张经管', '叶经管', '2021-09-01', '经济管理系'),
    ('经管五班', 0, '李经管', '叶经管', '2022-09-01', '经济管理系'),
    ('动科一班', 0, '陈动科', '叶动科', '2018-09-01', '动物科学系'),
    ('动科二班', 0, '王动科', '叶动科', '2019-09-01', '动物科学系'),
    ('动科三班', 0, '林动科', '叶动科', '2020-09-01', '动物科学系'),
    ('动科四班', 0, '张动科', '叶动科', '2021-09-01', '动物科学系'),
    ('动科五班', 0, '李动科', '叶动科', '2022-09-01', '动物科学系'),
    ('体育一班', 0, '陈体育', '叶体育', '2018-09-01', '体育系'),
    ('体育二班', 0, '王体育', '叶体育', '2019-09-01', '体育系'),
    ('体育三班', 0, '林体育', '叶体育', '2020-09-01', '体育系'),
    ('体育四班', 0, '张体育', '叶体育', '2021-09-01', '体育系'),
    ('体育五班', 0, '李体育', '叶体育', '2022-09-01', '体育系');

-- 插入 Student 表数据
INSERT INTO Student (student_card, student_name, student_gender, student_phone, student_birth, student_home, student_comes, student_number, department_name, student_major, class_name) VALUES
    ('192182172162152130', '苏电脑', 'man', '13800138000', '2002-03-01', '北京海淀区', '北京市', '2105080130', '计算机科学系', '软件工程', '计算机一班'),
    ('192182172162152131', '卢电脑', 'woman', '13800138001', '2003-06-01', '天津南开区', '天津市', '2105080131', '计算机科学系', '计算机科学与技术', '计算机二班'),
    ('192182172162152132', '蒋电脑', 'man', '13800138002', '2004-09-01', '上海浦东区', '上海市', '2105080132', '计算机科学系', '网络工程', '计算机三班'),
    ('192182172162152133', '蔡电脑', 'woman', '13800138003', '2005-06-01', '河北廊坊市', '河北省', '2105080133', '计算机科学系', '信息安全', '计算机四班'),
    ('192182172162152134', '贾电脑', 'man', '13800138004', '2006-06-01', '河南郑州市', '河南省', '2105080134', '计算机科学系', '人工智能', '计算机五班'),
    ('192182172162152135', '苏电脑1', 'man', '13800138005', '2002-03-01', '北京海淀区', '北京市', '2105080135', '计算机科学系', '软件工程', '计算机一班'),
    ('192182172162152136', '卢电脑1', 'woman', '13800138006', '2003-06-01', '天津南开区', '天津市', '2105080136', '计算机科学系', '计算机科学与技术', '计算机二班'),
    ('192182172162152137', '蒋电脑1', 'man', '13800138007', '2004-09-01', '上海浦东区', '上海市', '2105080137', '计算机科学系', '网络工程', '计算机三班'),
    ('192182172162152138', '蔡电脑1', 'woman', '13800138008', '2005-06-01', '河北廊坊市', '河北省', '2105080138', '计算机科学系', '信息安全', '计算机四班'),
    ('192182172162152139', '贾电脑1', 'man', '13800138009', '2006-06-01', '河南郑州市', '河南省', '2105080139', '计算机科学系', '人工智能', '计算机五班'),
    ('192182172162152140', '苏电脑2', 'man', '13800138010', '2002-03-01', '北京海淀区', '北京市', '2105080140', '计算机科学系', '软件工程', '计算机一班'),
    ('192182172162152141', '卢电脑2', 'woman', '13800138011', '2003-06-01', '天津南开区', '天津市', '2105080141', '计算机科学系', '计算机科学与技术', '计算机二班'),
    ('192182172162152142', '蒋电脑2', 'man', '13800138012', '2004-09-01', '上海浦东区', '上海市', '2105080142', '计算机科学系', '网络工程', '计算机三班'),
    ('192182172162152143', '蔡电脑2', 'woman', '13800138013', '2005-06-01', '河北廊坊市', '河北省', '2105080143', '计算机科学系', '信息安全', '计算机四班'),
    ('192182172162152144', '贾电脑2', 'man', '13800138014', '2006-06-01', '河南郑州市', '河南省', '2105080144', '计算机科学系', '人工智能', '计算机五班'),
    ('192182172162152145', '苏电脑3', 'man', '13800138015', '2002-03-01', '北京海淀区', '北京市', '2105080145', '计算机科学系', '软件工程', '计算机一班'),
    ('192182172162152146', '卢电脑3', 'woman', '13800138016', '2003-06-01', '天津南开区', '天津市', '2105080146', '计算机科学系', '计算机科学与技术', '计算机二班'),
    ('192182172162152147', '蒋电脑3', 'man', '138001380017', '2004-09-01', '上海浦东区', '上海市', '2105080147', '计算机科学系', '网络工程', '计算机三班'),
    ('192182172162152148', '蔡电脑3', 'woman', '13800138018', '2005-06-01', '河北廊坊市', '河北省', '2105080148', '计算机科学系', '信息安全', '计算机四班'),
    ('192182172162152149', '贾电脑3', 'man', '13800138019', '2006-06-01', '河南郑州市', '河南省', '2105080149', '计算机科学系', '人工智能', '计算机五班'),
    ('192182172162152150', '苏电脑4', 'man', '13800138020', '2002-03-01', '北京海淀区', '北京市', '2105080150', '计算机科学系', '软件工程', '计算机一班'),
    ('192182172162152151', '卢电脑4', 'woman', '13800138021', '2003-06-01', '天津南开区', '天津市', '2105080151', '计算机科学系', '计算机科学与技术', '计算机二班'),
    ('192182172162152152', '蒋电脑4', 'man', '13800138022', '2004-09-01', '上海浦东区', '上海市', '2105080152', '计算机科学系', '网络工程', '计算机三班'),
    ('192182172162152153', '蔡电脑4', 'woman', '13800138023', '2005-06-01', '河北廊坊市', '河北省', '2105080153', '计算机科学系', '信息安全', '计算机四班'),
    ('192182172162152154', '贾电脑4', 'man', '13800138024', '2006-06-01', '河南郑州市', '河南省', '2105080154', '计算机科学系', '人工智能', '计算机五班'),
    ('193183173163153130', '苏电子', 'man', '13800238000', '2002-03-01', '北京海淀区', '北京市', '2105081130', '机械工程系', '机械自动化', '机械一班'),
    ('193183173163153131', '卢电子', 'woman', '13800238001', '2003-06-01', '天津南开区', '天津市', '2105081131', '机械工程系', '车辆工程', '机械二班'),
    ('193183173163153132', '蒋电子', 'man', '13800238002', '2004-09-01', '上海浦东区', '上海市', '2105081132', '机械工程系', '工业设计', '机械三班'),
    ('193183173163153133', '蔡电子', 'woman', '13800238003', '2005-06-01', '河北廊坊市', '河北省', '2105081133', '机械工程系', '机械电子工程', '机械四班'),
    ('193183173163153134', '贾电子', 'man', '13800238004', '2006-06-01', '河南郑州市', '河南省', '2105081134', '机械工程系', '材料成型及控制工程', '机械五班'),
    ('193183173163153135', '苏电子1', 'man', '13800238005', '2002-03-01', '北京海淀区', '北京市', '2105081135', '机械工程系', '机械自动化', '机械一班'),
    ('193183173163153136', '卢电子1', 'woman', '13800238006', '2003-06-01', '天津南开区', '天津市', '2105081136', '机械工程系', '车辆工程', '机械二班'),
    ('193183173163153137', '蒋电子1', 'man', '13800238007', '2004-09-01', '上海浦东区', '上海市', '2105081137', '机械工程系', '工业设计', '机械三班'),
    ('193183173163153138', '蔡电子1', 'woman', '13800238008', '2005-06-01', '河北廊坊市', '河北省', '2105081138', '机械工程系', '机械电子工程', '机械四班'),
    ('193183173163153139', '贾电子1', 'man', '13800238009', '2006-06-01', '河南郑州市', '河南省', '2105081139', '机械工程系', '材料成型及控制工程', '机械五班'),
    ('193183173163153140', '苏电子2', 'man', '13800238010', '2002-03-01', '北京海淀区', '北京市', '2105081140', '机械工程系', '机械自动化', '机械一班'),
    ('193183173163153141', '卢电子2', 'woman', '13800238011', '2003-06-01', '天津南开区', '天津市', '2105081141', '机械工程系', '车辆工程', '机械二班'),
    ('193183173163153142', '蒋电子2', 'man', '13800238012', '2004-09-01', '上海浦东区', '上海市', '2105081142', '机械工程系', '工业设计', '机械三班'),
    ('193183173163153143', '蔡电子2', 'woman', '13800238013', '2005-06-01', '河北廊坊市', '河北省', '2105081143', '机械工程系', '机械电子工程', '机械四班'),
    ('193183173163153144', '贾电子2', 'man', '13800238014', '2006-06-01', '河南郑州市', '河南省', '2105081144', '机械工程系', '材料成型及控制工程', '机械五班'),
    ('193183173163153145', '苏电子3', 'man', '13800238015', '2002-03-01', '北京海淀区', '北京市', '2105081145', '机械工程系', '机械自动化', '机械一班'),
    ('193183173163153146', '卢电子3', 'woman', '13800238016', '2003-06-01', '天津南开区', '天津市', '2105081146', '机械工程系', '车辆工程', '机械二班'),
    ('193183173163153147', '蒋电子3', 'man', '13800238017', '2004-09-01', '上海浦东区', '上海市', '2105081147', '机械工程系', '工业设计', '机械三班'),
    ('193183173163153148', '蔡电子3', 'woman', '13800238018', '2005-06-01', '河北廊坊市', '河北省', '2105081148', '机械工程系', '机械电子工程', '机械四班'),
    ('193183173163153149', '贾电子3', 'man', '13800238019', '2006-06-01', '河南郑州市', '河南省', '2105081149', '机械工程系', '材料成型及控制工程', '机械五班'),
    ('193183173163153150', '苏电子4', 'man', '13800238020', '2002-03-01', '北京海淀区', '北京市', '2105081150', '机械工程系', '机械自动化', '机械一班'),
    ('193183173163153151', '卢电子4', 'woman', '13800238021', '2003-06-01', '天津南开区', '天津市', '2105081151', '机械工程系', '车辆工程', '机械二班'),
    ('193183173163153152', '蒋电子4', 'man', '13800238022', '2004-09-01', '上海浦东区', '上海市', '2105081152', '机械工程系', '工业设计', '机械三班'),
    ('193183173163153153', '蔡电子4', 'woman', '13800238023', '2005-06-01', '河北廊坊市', '河北省', '2105081153', '机械工程系', '机械电子工程', '机械四班'),
    ('193183173163153154', '贾电子4', 'man', '13800238024', '2006-06-01', '河南郑州市', '河南省', '2105081154', '机械工程系', '材料成型及控制工程', '机械五班'),
    ('194184174164154130', '苏机械', 'man', '13800338000', '2002-03-01', '北京海淀区', '北京市', '2105082130', '电子工程系', '电子信息工程', '电子一班'),
    ('194184174164154131', '卢机械', 'woman', '13800338001', '2003-06-01', '天津南开区', '天津市', '2105082131', '电子工程系', '通信工程', '电子二班'),
    ('194184174164154132', '蒋机械', 'man', '13800338002', '2004-09-01', '上海浦东区', '上海市', '2105082132', '电子工程系', '集成电路设计与集成系统', '电子三班'),
    ('194184174164154133', '蔡机械', 'woman', '13800338003', '2005-06-01', '河北廊坊市', '河北省', '2105082133', '电子工程系', '自动化', '电子四班'),
    ('194184174164154134', '贾机械', 'man', '13800338004', '2006-06-01', '河南郑州市', '河南省', '2105082134', '电子工程系', '微电子科学与工程', '电子五班'),
    ('194184174164154135', '苏机械1', 'man', '13800338005', '2002-03-01', '北京海淀区', '北京市', '2105082135', '电子工程系', '电子信息工程', '电子一班'),
    ('194184174164154136', '卢机械1', 'woman', '13800338006', '2003-06-01', '天津南开区', '天津市', '2105082136', '电子工程系', '通信工程', '电子二班'),
    ('194184174164154137', '蒋机械1', 'man', '13800338007', '2004-09-01', '上海浦东区', '上海市', '2105082137', '电子工程系', '集成电路设计与集成系统', '电子三班'),
    ('194184174164154138', '蔡机械1', 'woman', '13800338008', '2005-06-01', '河北廊坊市', '河北省', '2105082138', '电子工程系', '自动化', '电子四班'),
    ('194184174164154139', '贾机械1', 'man', '13800338009', '2006-06-01', '河南郑州市', '河南省', '2105082139', '电子工程系', '微电子科学与工程', '电子五班'),
    ('194184174164154140', '苏机械2', 'man', '13800338010', '2002-03-01', '北京海淀区', '北京市', '2105082140', '电子工程系', '电子信息工程', '电子一班'),
    ('194184174164154141', '卢机械2', 'woman', '13800338011', '2003-06-01', '天津南开区', '天津市', '2105082141', '电子工程系', '通信工程', '电子二班'),
    ('194184174164154142', '蒋机械2', 'man', '13800338012', '2004-09-01', '上海浦东区', '上海市', '2105082142', '电子工程系', '集成电路设计与集成系统', '电子三班'),
    ('194184174164154143', '蔡机械2', 'woman', '13800338013', '2005-06-01', '河北廊坊市', '河北省', '2105082143', '电子工程系', '自动化', '电子四班'),
    ('194184174164154144', '贾机械2', 'man', '13800338014', '2006-06-01', '河南郑州市', '河南省', '2105082144', '电子工程系', '微电子科学与工程', '电子五班'),
    ('194184174164154145', '苏机械3', 'man', '13800338015', '2002-03-01', '北京海淀区', '北京市', '2105082145', '电子工程系', '电子信息工程', '电子一班'),
    ('194184174164154146', '卢机械3', 'woman', '13800338016', '2003-06-01', '天津南开区', '天津市', '2105082146', '电子工程系', '通信工程', '电子二班'),
    ('194184174164154147', '蒋机械3', 'man', '13800338017', '2004-09-01', '上海浦东区', '上海市', '2105082147', '电子工程系', '集成电路设计与集成系统', '电子三班'),
    ('194184174164154148', '蔡机械3', 'woman', '13800338018', '2005-06-01', '河北廊坊市', '河北省', '2105082148', '电子工程系', '自动化', '电子四班'),
    ('194184174164154149', '贾机械3', 'man', '13800338019', '2006-06-01', '河南郑州市', '河南省', '2105082149', '电子工程系', '微电子科学与工程', '电子五班'),
    ('194184174164154150', '苏机械4', 'man', '13800338020', '2002-03-01', '北京海淀区', '北京市', '2105082150', '电子工程系', '电子信息工程', '电子一班'),
    ('194184174164154151', '卢机械4', 'woman', '13800338021', '2003-06-01', '天津南开区', '天津市', '2105082151', '电子工程系', '通信工程', '电子二班'),
    ('194184174164154152', '蒋机械4', 'man', '13800338022', '2004-09-01', '上海浦东区', '上海市', '2105082152', '电子工程系', '集成电路设计与集成系统', '电子三班'),
    ('194184174164154153', '蔡机械4', 'woman', '13800338023', '2005-06-01', '河北廊坊市', '河北省', '2105082153', '电子工程系', '自动化', '电子四班'),
    ('194184174164154154', '贾机械4', 'man', '13800338024', '2006-06-01', '河南郑州市', '河南省', '2105082154', '电子工程系', '微电子科学与工程', '电子五班'),
    ('195185175165155130', '苏种地', 'man', '13800438000', '2002-03-01', '北京海淀区', '北京市', '2105083130', '农学系', '农学', '农学一班'),
    ('195185175165155131', '卢种地', 'woman', '13800438001', '2003-06-01', '天津南开区', '天津市', '2105083131', '农学系', '植物保护', '农学二班'),
    ('195185175165155132', '蒋种地', 'man', '13800438002', '2004-09-01', '上海浦东区', '上海市', '2105083132', '农学系', '园艺', '农学三班'),
    ('195185175165155133', '蔡种地', 'woman', '13800438003', '2005-06-01', '河北廊坊市', '河北省', '2105083133', '农学系', '种子科学与工程', '农学四班'),
    ('195185175165155134', '贾种地', 'man', '13800438004', '2006-06-01', '河南郑州市', '河南省', '2105083134', '农学系', '农业资源与环境', '农学五班'),
    ('195185175165155135', '苏种地1', 'man', '13800438005', '2002-03-01', '北京海淀区', '北京市', '2105083135', '农学系', '农学', '农学一班'),
    ('195185175165155136', '卢种地1', 'woman', '13800438006', '2003-06-01', '天津南开区', '天津市', '2105083136', '农学系', '植物保护', '农学二班'),
    ('195185175165155137', '蒋种地1', 'man', '13800438007', '2004-09-01', '上海浦东区', '上海市', '2105083137', '农学系', '园艺', '农学三班'),
    ('195185175165155138', '蔡种地1', 'woman', '13800438008', '2005-06-01', '河北廊坊市', '河北省', '2105083138', '农学系', '种子科学与工程', '农学四班'),
    ('195185175165155139', '贾种地1', 'man', '13800438009', '2006-06-01', '河南郑州市', '河南省', '2105083139', '农学系', '农业资源与环境', '农学五班'),
    ('195185175165155140', '苏种地2', 'man', '13800438010', '2002-03-01', '北京海淀区', '北京市', '2105083140', '农学系', '农学', '农学一班'),
    ('195185175165155141', '卢种地2', 'woman', '13800438011', '2003-06-01', '天津南开区', '天津市', '2105083141', '农学系', '植物保护', '农学二班'),
    ('195185175165155142', '蒋种地2', 'man', '13800438012', '2004-09-01', '上海浦东区', '上海市', '2105083142', '农学系', '园艺', '农学三班'),
    ('195185175165155143', '蔡种地2', 'woman', '13800438013', '2005-06-01', '河北廊坊市', '河北省', '2105083143', '农学系', '种子科学与工程', '农学四班'),
    ('195185175165155144', '贾种地2', 'man', '13800438014', '2006-06-01', '河南郑州市', '河南省', '2105083144', '农学系', '农业资源与环境', '农学五班'),
    ('195185175165155145', '苏种地3', 'man', '13800438015', '2002-03-01', '北京海淀区', '北京市', '2105083145', '农学系', '农学', '农学一班'),
    ('195185175165155146', '卢种地3', 'woman', '13800438016', '2003-06-01', '天津南开区', '天津市', '2105083146', '农学系', '植物保护', '农学二班'),
    ('195185175165155147', '蒋种地3', 'man', '13800438017', '2004-09-01', '上海浦东区', '上海市', '2105083147', '农学系', '园艺', '农学三班'),
    ('195185175165155148', '蔡种地3', 'woman', '13800438018', '2005-06-01', '河北廊坊市', '河北省', '2105083148', '农学系', '种子科学与工程', '农学四班'),
    ('195185175165155149', '贾种地3', 'man', '13800438019', '2006-06-01', '河南郑州市', '河南省', '2105083149', '农学系', '农业资源与环境', '农学五班'),
    ('195185175165155150', '苏种地4', 'man', '13800438020', '2002-03-01', '北京海淀区', '北京市', '2105083150', '农学系', '农学', '农学一班'),
    ('195185175165155151', '卢种地4', 'woman', '13800438021', '2003-06-01', '天津南开区', '天津市', '2105083151', '农学系', '植物保护', '农学二班'),
    ('195185175165155152', '蒋种地4', 'man', '13800438022', '2004-09-01', '上海浦东区', '上海市', '2105083152', '农学系', '园艺', '农学三班'),
    ('195185175165155153', '蔡种地4', 'woman', '13800438023', '2005-06-01', '河北廊坊市', '河北省', '2105083153', '农学系', '种子科学与工程', '农学四班'),
    ('195185175165155154', '贾种地4', 'man', '13800438024', '2006-06-01', '河南郑州市', '河南省', '2105083154', '农学系', '农业资源与环境', '农学五班'),
    ('196186176166156130', '苏经管', 'man', '13800538000', '2002-03-01', '北京海淀区', '北京市', '2105084130', '经济管理系', '经济学', '经管一班'),
    ('196186176166156131', '卢经管', 'woman', '13800538001', '2003-06-01', '天津南开区', '天津市', '2105084131', '经济管理系', '国际经济与贸易', '经管二班'),
    ('196186176166156132', '蒋经管', 'man', '13800538002', '2004-09-01', '上海浦东区', '上海市', '2105084132', '经济管理系', '金融学', '经管三班'),
    ('196186176166156133', '蔡经管', 'woman', '13800538003', '2005-06-01', '河北廊坊市', '河北省', '2105084133', '经济管理系', '工商管理', '经管四班'),
    ('196186176166156134', '贾经管', 'man', '13800538004', '2006-06-01', '河南郑州市', '河南省', '2105084134', '经济管理系', '会计学', '经管五班'),
    ('196186176166156135', '苏经管1', 'man', '13800538005', '2002-03-01', '北京海淀区', '北京市', '2105084135', '经济管理系', '经济学', '经管一班'),
    ('196186176166156136', '卢经管1', 'woman', '13800538006', '2003-06-01', '天津南开区', '天津市', '2105084136', '经济管理系', '国际经济与贸易', '经管二班'),
    ('196186176166156137', '蒋经管1', 'man', '13800538007', '2004-09-01', '上海浦东区', '上海市', '2105084137', '经济管理系', '金融学', '经管三班'),
    ('196186176166156138', '蔡经管1', 'woman', '13800538008', '2005-06-01', '河北廊坊市', '河北省', '2105084138', '经济管理系', '工商管理', '经管四班'),
    ('196186176166156139', '贾经管1', 'man', '13800538009', '2006-06-01', '河南郑州市', '河南省', '2105084139', '经济管理系', '会计学', '经管五班'),
    ('196186176166156140', '苏经管2', 'man', '13800538010', '2002-03-01', '北京海淀区', '北京市', '2105084110', '经济管理系', '经济学', '经管一班'),
    ('196186176166156141', '卢经管2', 'woman', '13800538011', '2003-06-01', '天津南开区', '天津市', '2105084111', '经济管理系', '国际经济与贸易', '经管二班'),
    ('196186176166156142', '蒋经管2', 'man', '13800538012', '2004-09-01', '上海浦东区', '上海市', '2105084112', '经济管理系', '金融学', '经管三班'),
    ('196186176166156143', '蔡经管2', 'woman', '13800538013', '2005-06-01', '河北廊坊市', '河北省', '2105084113', '经济管理系', '工商管理', '经管四班'),
    ('196186176166156144', '贾经管2', 'man', '13800538014', '2006-06-01', '河南郑州市', '河南省', '2105084114', '经济管理系', '会计学', '经管五班'),
    ('196186176166156145', '苏经管3', 'man', '13800538015', '2002-03-01', '北京海淀区', '北京市', '2105084115', '经济管理系', '经济学', '经管一班'),
    ('196186176166156146', '卢经管3', 'woman', '13800538016', '2003-06-01', '天津南开区', '天津市', '2105084116', '经济管理系', '国际经济与贸易', '经管二班'),
    ('196186176166156147', '蒋经管3', 'man', '13800538017', '2004-09-01', '上海浦东区', '上海市', '2105084117', '经济管理系', '金融学', '经管三班'),
    ('196186176166156148', '蔡经管3', 'woman', '13800538018', '2005-06-01', '河北廊坊市', '河北省', '2105084118', '经济管理系', '工商管理', '经管四班'),
    ('196186176166156149', '贾经管3', 'man', '13800538019', '2006-06-01', '河南郑州市', '河南省', '2105084119', '经济管理系', '会计学', '经管五班'),
    ('196186176166156150', '苏经管4', 'man', '13800538020', '2002-03-01', '北京海淀区', '北京市', '2105084120', '经济管理系', '经济学', '经管一班'),
    ('196186176166156151', '卢经管4', 'woman', '13800538021', '2003-06-01', '天津南开区', '天津市', '2105084121', '经济管理系', '国际经济与贸易', '经管二班'),
    ('196186176166156152', '蒋经管4', 'man', '13800538022', '2004-09-01', '上海浦东区', '上海市', '2105084122', '经济管理系', '金融学', '经管三班'),
    ('196186176166156153', '蔡经管4', 'woman', '13800538023', '2005-06-01', '河北廊坊市', '河北省', '2105084123', '经济管理系', '工商管理', '经管四班'),
    ('196186176166156154', '贾经管4', 'man', '13800538024', '2006-06-01', '河南郑州市', '河南省', '2105084124', '经济管理系', '会计学', '经管五班'),
    ('197187177167157130', '苏动科', 'man', '13800638000', '2002-03-01', '北京海淀区', '北京市', '2105085130', '动物科学系', '动物科学', '动科一班'),
    ('197187177167157131', '卢动科', 'woman', '13800638001', '2003-06-01', '天津南开区', '天津市', '2105085131', '动物科学系', '动物医学', '动科二班'),
    ('197187177167157132', '蒋动科', 'man', '13800638002', '2004-09-01', '上海浦东区', '上海市', '2105085132', '动物科学系', '水产养殖学', '动科三班'),
    ('197187177167157133', '蔡动科', 'woman', '13800638003', '2005-06-01', '河北廊坊市', '河北省', '2105085133', '动物科学系', '动物营养与饲料科学', '动科四班'),
    ('197187177167157134', '贾动科', 'man', '13800638004', '2006-06-01', '河南郑州市', '河南省', '2105085134', '动物科学系', '野生动物与自然保护区管理', '动科五班'),
    ('197187177167157135', '苏动科1', 'man', '13800638005', '2002-03-01', '北京海淀区', '北京市', '2105085135', '动物科学系', '动物科学', '动科一班'),
    ('197187177167157136', '卢动科1', 'woman', '13800638006', '2003-06-01', '天津南开区', '天津市', '2105085136', '动物科学系', '动物医学', '动科二班'),
    ('197187177167157137', '蒋动科1', 'man', '13800638007', '2004-09-01', '上海浦东区', '上海市', '2105085137', '动物科学系', '水产养殖学', '动科三班'),
    ('197187177167157138', '蔡动科1', 'woman', '13800638008', '2005-06-01', '河北廊坊市', '河北省', '2105085138', '动物科学系', '动物营养与饲料科学', '动科四班'),
    ('197187177167157139', '贾动科1', 'man', '13800638009', '2006-06-01', '河南郑州市', '河南省', '2105085139', '动物科学系', '野生动物与自然保护区管理', '动科五班'),
    ('197187177167157140', '苏动科2', 'man', '13800638010', '2002-03-01', '北京海淀区', '北京市', '2105085140', '动物科学系', '动物科学', '动科一班'),
    ('197187177167157141', '卢动科2', 'woman', '13800638011', '2003-06-01', '天津南开区', '天津市', '2105085141', '动物科学系', '动物医学', '动科二班'),
    ('197187177167157142', '蒋动科2', 'man', '13800638012', '2004-09-01', '上海浦东区', '上海市', '2105085142', '动物科学系', '水产养殖学', '动科三班'),
    ('197187177167157143', '蔡动科2', 'woman', '13800638013', '2005-06-01', '河北廊坊市', '河北省', '2105085143', '动物科学系', '动物营养与饲料科学', '动科四班'),
    ('197187177167157144', '贾动科2', 'man', '13800638014', '2006-06-01', '河南郑州市', '河南省', '2105085144', '动物科学系', '野生动物与自然保护区管理', '动科五班'),
    ('197187177167157145', '苏动科3', 'man', '13800638015', '2002-03-01', '北京海淀区', '北京市', '2105085145', '动物科学系', '动物科学', '动科一班'),
    ('197187177167157146', '卢动科3', 'woman', '13800638016', '2003-06-01', '天津南开区', '天津市', '2105085146', '动物科学系', '动物医学', '动科二班'),
    ('197187177167157147', '蒋动科3', 'man', '13800638017', '2004-09-01', '上海浦东区', '上海市', '2105085147', '动物科学系', '水产养殖学', '动科三班'),
    ('197187177167157148', '蔡动科3', 'woman', '13800638018', '2005-06-01', '河北廊坊市', '河北省', '2105085148', '动物科学系', '动物营养与饲料科学', '动科四班'),
    ('197187177167157149', '贾动科3', 'man', '13800638019', '2006-06-01', '河南郑州市', '河南省', '2105085149', '动物科学系', '野生动物与自然保护区管理', '动科五班'),
    ('197187177167157150', '苏动科4', 'man', '13800638020', '2002-03-01', '北京海淀区', '北京市', '2105085150', '动物科学系', '动物科学', '动科一班'),
    ('197187177167157151', '卢动科4', 'woman', '13800638021', '2003-06-01', '天津南开区', '天津市', '2105085151', '动物科学系', '动物医学', '动科二班'),
    ('197187177167157152', '蒋动科4', 'man', '13800638022', '2004-09-01', '上海浦东区', '上海市', '2105085152', '动物科学系', '水产养殖学', '动科三班'),
    ('197187177167157153', '蔡动科4', 'woman', '13800638023', '2005-06-01', '河北廊坊市', '河北省', '2105085153', '动物科学系', '动物营养与饲料科学', '动科四班'),
    ('197187177167157154', '贾动科4', 'man', '13800638024', '2006-06-01', '河南郑州市', '河南省', '2105085154', '动物科学系', '野生动物与自然保护区管理', '动科五班'),
    ('198188178168158130', '苏体育', 'man', '13800738000', '2002-03-01', '北京海淀区', '北京市', '2105086130', '体育系', '体育教育', '体育一班'),
    ('198188178168158131', '卢体育', 'woman', '13800738001', '2003-06-01', '天津南开区', '天津市', '2105086131', '体育系', '运动训练', '体育二班'),
    ('198188178168158132', '蒋体育', 'man', '13800738002', '2004-09-01', '上海浦东区', '上海市', '2105086132', '体育系', '社会体育指导与管理', '体育三班'),
    ('198188178168158133', '蔡体育', 'woman', '13800738003', '2005-06-01', '河北廊坊市', '河北省', '2105086133', '体育系', '运动人体科学', '体育四班'),
    ('198188178168158134', '贾体育', 'man', '13800738004', '2006-06-01', '河南郑州市', '河南省', '2105086134', '体育系', '运动医学', '体育五班'),
    ('198188178168158135', '苏体育1', 'man', '13800738005', '2002-03-01', '北京海淀区', '北京市', '2105086135', '体育系', '体育教育', '体育一班'),
    ('198188178168158136', '卢体育1', 'woman', '13800738006', '2003-06-01', '天津南开区', '天津市', '2105086136', '体育系', '运动训练', '体育二班'),
    ('198188178168158137', '蒋体育1', 'man', '13800738007', '2004-09-01', '上海浦东区', '上海市', '2105086137', '体育系', '社会体育指导与管理', '体育三班'),
    ('198188178168158138', '蔡体育1', 'woman', '13800738008', '2005-06-01', '河北廊坊市', '河北省', '2105086138', '体育系', '运动人体科学', '体育四班'),
    ('198188178168158139', '贾体育1', 'man', '13800738009', '2006-06-01', '河南郑州市', '河南省', '2105086139', '体育系', '运动医学', '体育五班'),
    ('198188178168158140', '苏体育2', 'man', '13800738010', '2002-03-01', '北京海淀区', '北京市', '2105086140', '体育系', '体育教育', '体育一班'),
    ('198188178168158141', '卢体育2', 'woman', '13800738011', '2003-06-01', '天津南开区', '天津市', '2105086141', '体育系', '运动训练', '体育二班'),
    ('198188178168158142', '蒋体育2', 'man', '13800738012', '2004-09-01', '上海浦东区', '上海市', '2105086142', '体育系', '社会体育指导与管理', '体育三班'),
    ('198188178168158143', '蔡体育2', 'woman', '13800738013', '2005-06-01', '河北廊坊市', '河北省', '2105086143', '体育系', '运动人体科学', '体育四班'),
    ('198188178168158144', '贾体育2', 'man', '13800738014', '2006-06-01', '河南郑州市', '河南省', '2105086144', '体育系', '运动医学', '体育五班'),
    ('198188178168158145', '苏体育3', 'man', '13800738015', '2002-03-01', '北京海淀区', '北京市', '2105086145', '体育系', '体育教育', '体育一班'),
    ('198188178168158146', '卢体育3', 'woman', '13800738016', '2003-06-01', '天津南开区', '天津市', '2105086146', '体育系', '运动训练', '体育二班'),
    ('198188178168158147', '蒋体育3', 'man', '13800738017', '2004-09-01', '上海浦东区', '上海市', '2105086147', '体育系', '社会体育指导与管理', '体育三班'),
    ('198188178168158148', '蔡体育3', 'woman', '13800738018', '2005-06-01', '河北廊坊市', '河北省', '2105086148', '体育系', '运动人体科学', '体育四班'),
    ('198188178168158149', '贾体育3', 'man', '13800738019', '2006-06-01', '河南郑州市', '河南省', '2105086149', '体育系', '运动医学', '体育五班'),
    ('198188178168158150', '苏体育4', 'man', '13800738020', '2002-03-01', '北京海淀区', '北京市', '2105086150', '体育系', '体育教育', '体育一班'),
    ('198188178168158151', '卢体育4', 'woman', '13800738021', '2003-06-01', '天津南开区', '天津市', '2105086151', '体育系', '运动训练', '体育二班'),
    ('198188178168158152', '蒋体育4', 'man', '13800738022', '2004-09-01', '上海浦东区', '上海市', '2105086152', '体育系', '社会体育指导与管理', '体育三班'),
    ('198188178168158153', '蔡体育4', 'woman', '13800738023', '2005-06-01', '河北廊坊市', '河北省', '2105086153', '体育系', '运动人体科学', '体育四班'),
    ('198188178168158154', '贾体育4', 'man', '13800738024', '2006-06-01', '河南郑州市', '河南省', '2105086154', '体育系', '运动医学', '体育五班');

-- 插入 TeacherList 表数据
INSERT INTO Teacher (teacher_name, teacher_gender, teacher_phone, teacher_birth, teacher_home, teacher_card, hire_date, department_name, teacher_job) VALUES
    ('陈电脑', 'woman', '13800138003', '1980-07-15', '北京海淀区', 'T20220001', '2010-09-01', '计算机科学系', '教师'),
    ('王电脑', 'man', '13800138004', '1982-11-20', '天津南开区', 'T20220002', '2012-09-01', '计算机科学系', '教师'),
    ('林电脑', 'woman', '13800138005', '1985-03-10', '上海浦东区', 'T20220003', '2015-09-01', '计算机科学系', '教师'),
    ('张电脑', 'woman', '13800138006', '1980-07-15', '河北廊坊市', 'T20220004', '2010-09-01', '计算机科学系', '教师'),
    ('李电脑', 'man', '13800138007', '1982-11-20', '河南郑州市', 'T20220005', '2012-09-01', '计算机科学系', '教师'),
    ('陈机械', 'woman', '13800138008', '1985-03-10', '北京海淀区', 'T20220006', '2015-09-01', '机械工程系', '教师'),
    ('王机械', 'woman', '13800138009', '1980-07-15', '天津南开区', 'T20220007', '2010-09-01', '机械工程系', '教师'),   
    ('林机械', 'man', '13800138010', '1982-11-20', '上海浦东区', 'T20220008', '2012-09-01', '机械工程系', '教师'),     
    ('张机械', 'woman', '13800138011', '1985-03-10', '河北廊坊市', 'T20220009', '2015-09-01', '机械工程系', '教师'),   
    ('李机械', 'woman', '13800138012', '1980-07-15', '河南郑州市', 'T20220010', '2010-09-01', '机械工程系', '教师'),   
    ('陈电子', 'man', '138001380013', '1982-11-20', '北京海淀区', 'T202200011', '2012-09-01', '电子工程系', '教师'),
    ('王电子', 'woman', '13800138014', '1985-03-10', '天津南开区', 'T20220012', '2015-09-01', '电子工程系', '教师'),
    ('林电子', 'woman', '13800138015', '1980-07-15', '上海浦东区', 'T20220013', '2010-09-01', '电子工程系', '教师'),
    ('张电子', 'man', '13800138016', '1982-11-20', '河北廊坊市', 'T20220014', '2012-09-01', '电子工程系', '教师'),
    ('李电子', 'woman', '13800138017', '1985-03-10', '河南郑州市', 'T20220015', '2015-09-01', '电子工程系', '教师'),
    ('陈种地', 'woman', '13800138018', '1980-07-15', '北京海淀区', 'T20220016', '2010-09-01', '农学系', '教师'),
    ('王种地', 'man', '13800138019', '1982-11-20', '天津南开区', 'T20220017', '2012-09-01', '农学系', '教师'),
    ('林种地', 'woman', '13800138020', '1985-03-10', '上海浦东区', 'T20220018', '2015-09-01', '农学系', '教师'),
    ('张种地', 'woman', '13800138021', '1980-07-15', '河北廊坊市', 'T20220019', '2010-09-01', '农学系', '教师'),
    ('李种地', 'man', '13800138022', '1982-11-20', '河南郑州市', 'T20220020', '2012-09-01', '农学系', '教师'),
    ('陈经管', 'woman', '13800138023', '1985-03-10', '北京海淀区', 'T20220021', '2015-09-01', '经济管理系', '教师'),
    ('王经管', 'woman', '13800138024', '1980-07-15', '天津南开区', 'T20220022', '2010-09-01', '经济管理系', '教师'),
    ('林经管', 'woman', '13800138025', '1980-07-15', '上海浦东区', 'T20220023', '2010-09-01', '经济管理系', '教师'),
    ('张经管', 'man', '13800138026', '1982-11-20', '河北廊坊市', 'T20220024', '2012-09-01', '经济管理系', '教师'),
    ('李经管', 'woman', '13800138027', '1985-03-10', '河南郑州市', 'T20220025', '2015-09-01', '经济管理系', '教师'),
    ('陈动科', 'woman', '13800138028', '1980-07-15', '北京海淀区', 'T20220026', '2010-09-01', '动物科学系', '教师'),
    ('王动科', 'man', '13800138029', '1982-11-20', '天津南开区', 'T20220027', '2012-09-01', '动物科学系', '教师'),
    ('林动科', 'woman', '13800138030', '1985-03-10', '上海浦东区', 'T20220028', '2015-09-01', '动物科学系', '教师'),
    ('张动科', 'woman', '13800138031', '1980-07-15', '河北廊坊市', 'T20220029', '2010-09-01', '动物科学系', '教师'),
    ('李动科', 'man', '138001380032', '1982-11-20', '河南郑州市', 'T20220030', '2012-09-01', '动物科学系', '教师'),
    ('陈体育', 'woman', '13800138033', '1985-03-10', '北京海淀区', 'T20220031', '2015-09-01', '体育系', '教师'),
    ('王体育', 'woman', '13800138034', '1980-07-15', '天津南开区', 'T20220032', '2010-09-01', '体育系', '教师'),
    ('林体育', 'woman', '13800138035', '1980-07-15', '上海浦东区', 'T20220033', '2010-09-01', '体育系', '教师'),
    ('张体育', 'man', '13800138036', '1982-11-20', '河北廊坊市', 'T20220034', '2012-09-01', '体育系', '教师'),
    ('李体育', 'woman', '13800138037', '1985-03-10', '河南郑州市', 'T20220035', '2015-09-01', '体育系', '教师'),
    ('叶电脑', 'woman', '13800138038', '1980-07-15', '北京海淀区', 'T20220036', '2010-09-01', '计算机科学系', '辅导员'),
    ('叶机械', 'woman', '13800138043', '1985-03-10', '北京海淀区', 'T20220041', '2015-09-01', '机械工程系', '辅导员'),
    ('叶电子', 'woman', '13800138048', '1980-07-15', '北京海淀区', 'T20220046', '2010-09-01', '电子工程系', '辅导员'),
    ('叶种地', 'woman', '13800138053', '1985-03-10', '北京海淀区', 'T20220051', '2015-09-01', '农学系', '辅导员'),
    ('叶经管', 'woman', '13800138058', '1980-07-15', '北京海淀区', 'T20220056', '2010-09-01', '经济管理系', '辅导员'),
    ('叶动科', 'woman', '13800138063', '1985-03-10', '北京海淀区', 'T20220061', '2015-09-01', '动物科学系', '辅导员'),
    ('叶体育', 'woman', '13800138068', '1980-07-15', '北京海淀区', 'T20220066', '2010-09-01', '体育系', '辅导员');