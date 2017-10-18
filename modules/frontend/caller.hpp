#pragma once

#include <iostream>
#include <stdexcept>
#include <string>
#include <sstream>
#include "utils/log.hpp"
#include "utils/tools.hpp"
using namespace std;

enum class Map2CheckMode
{
    MEMTRACK_MODE,
    REACHABILITY_MODE,
    OVERFLOW_MODE
};

class Caller {

 protected:
  std::string pathprogram;
  void optimizeProgram();


 public:
  Caller() {}
  Caller( std::string bcprogram_path );
  std::string cprogram_fullpath;  
  static string compileCFile(std::string cprogram_path);
  void printdata();
  int parseIrFile();
  void genByteCodeFile();
  int callPass(Map2CheckMode mode, bool sv_comp = false);
  int callPass(Map2CheckMode mode, std::string target_function, bool sv_comp = false);
  void linkLLVM();
  void callKlee();
  void cleanGarbage();
};

class CallerException : public runtime_error {
 public:
 CallerException(string message) : runtime_error(message) {}
  virtual const char* what() const throw();
};

class InvalidClangBinaryException : public CallerException {
 public:
 InvalidClangBinaryException() : CallerException("") {}
  virtual const char* what() const throw();
};

class InvalidClangIncludeException : public CallerException {
 public:
 InvalidClangIncludeException() : CallerException("") {}
  virtual const char* what() const throw();
};

class ErrorCompilingCProgramException : public CallerException {
 public:
 ErrorCompilingCProgramException() : CallerException("") {}
  virtual const char* what() const throw();
};