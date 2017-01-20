

module EnglishSpeaker
  def talk_in_english
    puts "Hello! I'm talking in english!"
  end
end

class EnglishSchool
  def teach_english(student)
    student.extend EnglishSpeaker
  end
end

school = EnglishSchool.new
string_student = "Joao"
school.teach_english(string_student)
string_student.talk_in_english
