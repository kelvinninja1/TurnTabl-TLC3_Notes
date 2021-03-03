object exercise_1 {
  def main(args: Array[String]): Unit = {
    cel(2.3)
  }

  def cel (c: Double)  {
    val f = (c * 9 / 5 ) + 32
    println("The fahrenheit is: " + f)
  }
}
