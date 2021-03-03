object exercise_2 {
  import java.text.SimpleDateFormat

  def main(args: Array[String]): Unit = {
    dateFunc("22/02/15")
  }
  def dateFunc (dateString: String): Unit = {

    val inputFormat = new SimpleDateFormat("dd/MM/yy")
    val outputFormat = new SimpleDateFormat("MMMMM yyyy")
    val dateElements = dateString.split("/")
//    dateString split "/" foreach println  // Wanted to see the element 1 by 1
    val dayNo = dateElements(0)

    val formattedDate = outputFormat.format(inputFormat.parse(dateString))

    println(niceDay(dayNo) + " " + formattedDate)
  }


  def niceDay (dayNo: String): String = {
    var day: String = ""

    dayNo.toInt % 10 match {
      case 1 =>
        day = s"${dayNo}st"
      case 2 =>
        day = s"${dayNo}nd"
      case 3 =>
        day = s"${dayNo}rd"
      case _ =>
        day = s"${dayNo}th"
    }
    s"$day"
  }
}
