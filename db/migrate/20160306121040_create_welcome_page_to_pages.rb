class CreateWelcomePageToPages < ActiveRecord::Migration
  Page.create(name: "Welcome<br>", content: "This is edit page. There are many options in toolbar for editing. User has to login in order to edit this page.<font color=\"#FF0000\"> Authentication level to edit a page can be increased to specific person to edit a page. <font color=\"#000066\">You can save the edited changes by <font color=\"#003300\">'ctrl + S'</font></font></font><font color=\"#000066\"><font color=\"#003300\"> </font>or by clicking save button on top left corner</font>", author: "Test")
end
