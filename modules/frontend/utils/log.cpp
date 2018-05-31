#include "log.hpp"
#include <boost/log/trivial.hpp>
#include <string>
#include <iostream>
#include "tools.hpp"

namespace Map2Check {

  void Error(std::string msg) {
    
    BOOST_LOG_TRIVIAL(error) << "\033[0;31m" << msg << "\033[0m";
  }

  void Warning(std::string msg) {
    BOOST_LOG_TRIVIAL(warning) << "\033[1;33m" << msg << "\033[0m";
  }

  void initLog() {
      // logging::core::get()->set_filter(
      //          logging::trivial::severity >= logging::trivial::info);
  }

  void Debug(std::string msg) {
      BOOST_LOG_TRIVIAL(debug) << "\033[0;33m" << msg << "\033[0m";
  }

  void Info(std::string msg) {
    BOOST_LOG_TRIVIAL(info) << "\033[0;32m" << msg << "\033[0m";
  }

  void Fatal(std::string msg) {
    BOOST_LOG_TRIVIAL(fatal) << "\033[0;31m" << msg << "\033[0m";
  }


}
