/**
 * Copyright (C) 2014 - 2019 Map2Check tool
 * This file is part of the Map2Check tool, and is made available under
 * the terms of the GNU General Public License version 2.
 *
 * SPDX-License-Identifier: (GPL-2.0 AND BSL-1.0)
 **/

#ifndef MODULES_FRONTEND_WITNESS_GRAPH_HPP_
#define MODULES_FRONTEND_WITNESS_GRAPH_HPP_

#include <memory>
#include <string>
#include <vector>
#include "edge.hpp"
#include "node.hpp"
#include "witness.hpp"

// using namespace Map2Check;
using Map2Check::DataElement;
using Map2Check::Edge;
using Map2Check::Node;

namespace Map2Check {
class Graph {
 protected:
  std::string id;
  std::vector<std::unique_ptr<DataElement>> elements;
  std::vector<std::unique_ptr<Node>> states;
  std::vector<std::unique_ptr<Edge>> transitions;
  virtual std::string convertToString();

 public:
  Graph() {}
  virtual void AddElement(std::unique_ptr<DataElement> element);
  virtual void AddNode(std::unique_ptr<Node> node);
  virtual void AddEdge(std::unique_ptr<Edge> edge);
  operator std::string() { return this->convertToString(); }
};

class ViolationWitnessGraph : public Graph {
 protected:
  virtual std::string convertToString();

 public:
  ViolationWitnessGraph() : Graph() {}
};

class CorrectnessWitnessGraph : public Graph {
 protected:
  virtual std::string convertToString();

 public:
  CorrectnessWitnessGraph() : Graph() {}
};

class SVCompWitness {
 protected:
  std::unique_ptr<Graph> automata;
  std::string programHash;
  void makeViolationAutomata();
  void makeCorrectnessSVComp();
  void makeCorrectnessAutomata();
  void makeViolationAutomataAux();  // when we don't have KLEE values
 public:
  SVCompWitness(std::string programPath, std::string programHash,
                std::string targetFunction = "",
                std::string specTrueString = "");
  void Testify();
};
}  // namespace Map2Check

#endif  // MODULES_FRONTEND_WITNESS_GRAPH_HPP_
