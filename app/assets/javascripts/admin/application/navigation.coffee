###
  This file create navigation menu in top

  @navigate
  @params:
    @title - string
    @options - hash
    @nestedMenu - function

  If you wont use another main controller, you must set route param to ""
  for example:
    @navigate "MyDashboard", route: ""

  When you wont use Menu group:

    @navigate "Users", ->
      @navigate "Admins"
      @navigate "Managers"

  You can change url for menu when pass url params
      @navigate "Dashboard", url: "/my_dashbaord", route: "my_dashbaord"

params:
  url
  route
  divider true|false   -> default false

###
#Admin.DSL.Navigation.namespace = "admin"

###
  for testing
    @navigate "System", ->
      @navigate "Users"
      @navigate "Settings", divider: true
###

Admin.DSL.Navigation.map ->
  @navigate "Dashboard", route: ""