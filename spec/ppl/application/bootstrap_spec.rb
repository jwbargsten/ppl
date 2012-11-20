
describe Ppl::Application::Bootstrap do

  before(:each) do
    @bootstrap = Ppl::Application::Bootstrap.new
  end

  describe "#command_suite" do
    it "should return a Ppl::Application::CommandSuite" do
      @bootstrap.command_suite.should be_a(Ppl::Application::CommandSuite)
    end
    it "should contain the 'ls' command" do
      @bootstrap.command_suite.find_command("ls").should_not be nil
    end
  end

  describe "#input" do
    it "should return a Ppl::Application::Input" do
      @bootstrap.input.should be_a(Ppl::Application::Input)
    end
    it "should populate the object with the given arguments" do
      arguments = ["foo", "bar"]
      @bootstrap.input(arguments).arguments.should be(arguments)
    end
  end

  describe "#shell" do
    it "should return a Ppl::Application::Shell" do
      @bootstrap.shell.should be_a(Ppl::Application::Shell)
    end
  end

end
