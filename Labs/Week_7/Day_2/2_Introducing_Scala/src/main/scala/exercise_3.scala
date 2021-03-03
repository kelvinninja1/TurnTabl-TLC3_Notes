object exercise_3 {
  def main(args: Array[String]): Unit = {
    val files = "root:\u200Bx:0:0:root:/root:/bin/bash\nbin:\u200Bx:1:1:bin:/bin:/sbin/nologin\ndaemon:\u200Bx:2:2:daemon:/sbin:/sbin/nologin\nadm:\u200Bx:3:4:adm:/var/adm:/sbin/nologin\nlp:\u200Bx:4:7:lp:/var/spool/lpd:/sbin/nologin\nsync:\u200Bx:5:0:sync:/sbin:/bin/sync".split("\n")
    files.foreach(x => regexTest(x))
  }

  def regexTest(text: String): Unit= {
    val gex = raw"(.*):(.*):(.*):(.*):(.*):(.*):(.*)".r

    val gex (username,password,userid,groupid,description,home_directory,shell) = text

    println(
      s"""
        Password File: $text
        username -> $username
        password -> $password
        userid -> $userid
        groupid -> $groupid
        description -> $description
        home_directory -> $home_directory
        shell -> $shell
      """)
  }
}
