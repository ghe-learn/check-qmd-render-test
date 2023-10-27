
library(checklist)
library(ghclass)

packageVersion("checklist")
packageVersion("ghclass")


# file with error ---------------------------------------------------------

handle_error(
  check_qmd_renders("test-render-error.qmd"),
  on_error = {
    issue_create("ghe-learn/check-qmd-render-test",
                 "The .qmd file does not render correctly",
                 "The .qmd file does not render correctly.
                 Please try to fix the errors and reach out to @larnsce for support.")
  })


# file wihout error -------------------------------------------------------

handle_error(
  check_qmd_renders("test-render.qmd"),
  on_error = {
    issue_create("ghe-learn/check-qmd-render-test",
                 "The .qmd file does not render correctly",
                 "The .qmd file does not render correctly.
                 Please try to fix the errors and reach out to @larnsce for support.")
  })
