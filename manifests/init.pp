class marsdb01 {

    #include marsdb01::setupmarsdb01repo
    #include marsdb01::installmarsdb01
    #include marsdb01::servicemarsdb01
   
    #Class['marsdb

    class {marsdb01::setupmarsdb01repo:}
    class {marsdb01::installmarsdb01:}
    class {marsdb01::servicemarsdb01:}
}
