/*

Header file for the interface to the Vitis library solver
Base class is SparseSymLinearSolver

*/

class VitisSolverInterface: public SparseSymLinearSolverInterface
{
public:


  //Constructor
  VitisSolverInterface(){
  
  
  
  };
  
  
  
  
  
  
  //Destructor
  ~VitisSolverInterface();
  
  
  
  bool InitializeImpl(
      const OptionsList& options,
      const std::string& prefix
   );
   
   
   ESymSolverStatus InitializeStructure(
      Index        dim,
      Index        nonzeros,
      const Index* ia,
      const Index* ja
   );

   double* GetValuesArrayPtr()
   {
      return val_;
   }

   ESymSolverStatus MultiSolve(
      bool         new_matrix,
      const Index* ia,
      const Index* ja,
      Index        nrhs,
      double*      rhs_vals,
      bool         check_NegEVals,
      Index        numberOfNegEVals
   );
   
   
   
   
   Index NumberOfNegEVals() const
   {
      return numneg_;
   }
   //@}


   //* @name Options of Linear solver */
   //@{
   bool IncreaseQuality()
   {
     return false;
   }

   
   
   bool ProvidesInertia() const
   {
      return false;
   }

   
   
   EMatrixFormat MatrixFormat() const
   {
      return CSR_Full_Format_0_Offset;
   }
   //@}



   /** @name Methods related to the detection of linearly dependent
    *  rows in a matrix */
   //@{
   bool ProvidesDegeneracyDetection() const
   {
      return false;
   }



   ESymSolverStatus DetermineDependentRows(
      const Index*      /*ia*/,
      const Index*      /*ja*/,
      std::list<Index>& /*c_deps*/
   )
   {
      return SYMSOLVER_FATAL_ERROR;
   }
   //@}





   /** converts a scaling option name to its ma97 option number */
   static int ScaleNameToNum(
      const std::string& name
   );
   
   
   
   
