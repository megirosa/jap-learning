"use strict"

angular.module "japaneseLearningApp.services", ["rails"]
angular.module("japaneseLearningApp.services").factory "CourseItem", [
  "railsResourceFactory"
  (railsResourceFactory) ->
    return railsResourceFactory(
      url: "/course_items"
      name: "course_item"
    )
]