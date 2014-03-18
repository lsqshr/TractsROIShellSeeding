#include "vtkNew.h"
#include <vtkNRRDReader.h>
#include <vtkNRRDWriter.h>
#include <vtkImageCast.h>
#include <vtkImageDilateErode3D.h>

#include "ROIDilateCLP.h"

#define DIMENSION 3

int main( int argc, char * argv[] )
{
  PARSE_ARGS;

  // Create all of the classes we will need
  vtkNew<vtkNRRDReader> reader;
  vtkNew<vtkNRRDWriter> writer;
  vtkNew<vtkImageCast>     imageCast;

  reader->SetFileName(InputROI.c_str());
  reader->SetDataScalarTypeToUnsignedChar();
  reader->Update();

  vtkNew<vtkImageDilateErode3D> dilateErode;
  dilateErode->SetInputConnection(reader->GetOutputPort());
  dilateErode->SetDilateValue(1);
  dilateErode->SetErodeValue(0);
  dilateErode->SetKernelSize(KernelSize, KernelSize, KernelSize);
  dilateErode->ReleaseDataFlagOff();

  writer->SetFileName(outputVolume.c_str());
  writer->SetInput((vtkDataObject*) dilateErode->GetOutput());
  writer->UseCompressionOn();
  reader->GetRasToIjkMatrix()->Invert();
  writer->SetIJKToRASMatrix(reader->GetRasToIjkMatrix());
  writer->Write();

  return EXIT_SUCCESS;
}
