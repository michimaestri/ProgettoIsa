require 'test_helper'

class SensorsGroupTest < ActiveSupport::TestCase
  def setup
    @sensors_group = SensorsGroup.new(nome:"velocità")
  end

  test "Gruppo di sensori valido" do 
    assert @sensors_group.save
  end

  test "Nome non presente" do 
    @sensors_group.nome =""
    assert_not @sensors_group.valid?
  end

  test "Nome corto" do 
    @sensors_group.nome = "aa"
    assert_not @sensors_group.valid?
  end

  test "Nome lungo" do 
    @sensors_group.nome = "a"*26
    assert_not @sensors_group.valid?
  end

  test "Nome unico" do
    @sensors_group1= SensorsGroup.new(nome: "velocità")
    @sensors_group.save
    assert_not @sensors_group1.save
  end

end
