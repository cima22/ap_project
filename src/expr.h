#ifndef _EXPR_
#define _EXPR_

#include <string>
#include <vector>
#include <algorithm>
#include "var.h"

class Expr{
	
	protected:
		std::string expression; 	// string format of the expression
		std::vector<Var> vars;  	// vector of variables

		void extract_vars();

	public:
		Expr();
		Expr(const std::string& expr);
		Expr(const std::string& expr, const std::vector<Var>& vars);

		std::vector<Var> get_variables() const;
		const std::string& to_string() const;

		virtual int evaluate() = 0;
		virtual std::string stretch() = 0;

		friend std::ostream& operator<<(std::ostream& os, const Expr& expr);
};

#endif
