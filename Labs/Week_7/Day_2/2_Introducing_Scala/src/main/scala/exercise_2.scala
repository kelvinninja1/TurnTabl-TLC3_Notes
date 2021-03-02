object exercise_2 {
  import java.time.LocalDate
  import java.time.format.DateTimeFormatter
  import java.text.SimpleDateFormat

  def main(args: Array[String]): Unit = {
    dateFunc("22/02/15")
  }
  def dateFunc (dateString: String): Unit = {

    val inputFormat = new SimpleDateFormat("dd/MM/yy")
    val outputFormat = new SimpleDateFormat("MMMMM yyyy")
    var dateElements = dateString.split("/")
//    println(dateElements(0))
    dateString split("/") foreach(println)

    var dayNo = dateElements(0)
    var day: String = ""

    (dayNo.toInt % 10) match {
      case 1 =>
        day = s"${dayNo}st"
      case 2 =>
        day = s"${dayNo}nd"
      case 3 =>
        day = s"${dayNo}rd"
      case _ =>
        day = s"${dayNo}th"
    }

    val formattedDate = outputFormat.format(inputFormat.parse(dateString))

    println(day + " " + formattedDate)
  }
}

