// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery/dist/jquery
//= require semantic-ui/dist/semantic
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .



document.addEventListener("turbolinks:load", function() {
// Sidenav
  $('.ui.sidebar').sidebar({
      context: $('.bottom.segment')
    })
    .sidebar('attach events', '.menu .item');

// Delete courses
    if (document.querySelector('body.courses.index') == undefined) {
  		return;
  	}

    $('.delete-course').click(function (e) {
  e.preventDefault();
  let deletionUrl = e.target.getAttribute('href');

  $.ajax({
    method: 'DELETE',
    url: deletionUrl,
    success: function (data) {
      $(e.target).parents('.main-course').remove();
      toastr.success('Your todo has been successfully deleted');
    }
  });
});

// Delete Instructor
if (document.querySelector('body.instructors.index') == undefined) {
  return;
}

$('.delete-instructor').click(function (e) {
  e.preventDefault();
  let deletionUrl = e.target.getAttribute('href');

  $.ajax({
    method: 'DELETE',
    url: deletionUrl,
    success: function (data) {
      $(e.target).parents('.main-instructor').remove();
      toastr.success('Your todo has been successfully deleted');
  }
  });
});

// Delete Student
if (document.querySelector('body.stohorts.index') == undefined) {
  return;
}

$('.delete-stohort').click(function (e) {
  e.preventDefault();
  let deletionUrl = e.target.getAttribute('href');

  $.ajax({
    method: 'DELETE',
    url: deletionUrl,
    success: function (data) {
      $(e.target).parents('.main-student').remove();
      toastr.success('Your todo has been successfully deleted');
  }
  });
});

// Delete Cohort
if (document.querySelector('body.cohorts.index') == undefined) {
  return;
}

$('.delete-cohort').click(function (e) {
  e.preventDefault();
  let deletionUrl = e.target.getAttribute('href');

  $.ajax({
    method: 'DELETE',
    url: deletionUrl,
    success: function (data) {
      $(e.target).parents('.main-cohort').remove();
      toastr.success('Your todo has been successfully deleted');
  }
  });
});

// Log in Error
})

// $(document)
//    .ready(function() {
//      $('.ui.form')
//        .form({
//          fields: {
//            email: {
//              identifier  : 'email',
//              rules: [
//                {
//                  type   : 'empty',
//                  prompt : 'Please enter your e-mail'
//                },
//                {
//                  type   : 'email',
//                  prompt : 'Please enter a valid e-mail'
//                }
//              ]
//            },
//            password: {
//              identifier  : 'password',
//              rules: [
//                {
//                  type   : 'empty',
//                  prompt : 'Please enter your password'
//                },
//                {
//                  type   : 'length[6]',
//                  prompt : 'Your password must be at least 6 characters'
//                }
//              ]
//            }
//          }
//        })
//      ;
//    })
//  ;
