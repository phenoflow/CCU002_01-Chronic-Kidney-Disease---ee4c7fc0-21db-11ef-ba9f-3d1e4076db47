cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-chronic-kidney-disease-ckd-ultrafiltration---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-ultrafiltration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ccu002_01-chronic-kidney-disease-ckd-proteinuria---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-ultrafiltration---primary/output
  ccu002_01-chronic-kidney-disease-ckd-stage---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-proteinuria---primary/output
  ccu002_01-chronic-kidney-disease-ckd-haemodialysis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-haemodialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-stage---primary/output
  ccu002_01-chronic-kidney-disease-ckd-hypertension---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-haemodialysis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-transplantation---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-transplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-hypertension---primary/output
  endocapillary-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: endocapillary-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-transplantation---primary/output
  nephritic-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: nephritic-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: endocapillary-ccu002_01-chronic-kidney-disease-ckd---primary/output
  membranous-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: membranous-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: nephritic-ccu002_01-chronic-kidney-disease-ckd---primary/output
  mesangial-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: mesangial-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: membranous-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-aftercare---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-aftercare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: mesangial-ccu002_01-chronic-kidney-disease-ckd---primary/output
  renal-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: renal-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-aftercare---primary/output
  ccu002_01-chronic-kidney-disease-ckd-glomerulonephritis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-glomerulonephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: renal-ccu002_01-chronic-kidney-disease-ckd---primary/output
  acute-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: acute-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-glomerulonephritis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-dependence---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: acute-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-specified---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-dependence---primary/output
  ccu002_01-chronic-kidney-disease-ckd-compensate---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-compensate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-specified---primary/output
  extracorporeal-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: extracorporeal-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-compensate---primary/output
  ccu002_01-chronic-kidney-disease-ckd-exploration---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-exploration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: extracorporeal-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-shunt---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-shunt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-exploration---primary/output
  ccu002_01-chronic-kidney-disease-ckd-creation---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-creation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-shunt---primary/output
  ccu002_01-chronic-kidney-disease-ckd-haemofiltration---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-haemofiltration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-creation---primary/output
  ccu002_01-chronic-kidney-disease-ckd-procedure---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-haemofiltration---primary/output
  ccu002_01-chronic-kidney-disease-ckd-insertion---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-insertion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-procedure---primary/output
  ccu002_01-chronic-kidney-disease-ckd-acquired---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-insertion---primary/output
  ccu002_01-chronic-kidney-disease-ckd-complication---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-acquired---primary/output
  angioplasty-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: angioplasty-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-complication---primary/output
  ccu002_01-chronic-kidney-disease-ckd-reaction---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: angioplasty-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-rupture---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-reaction---primary/output
  ccu002_01-chronic-kidney-disease-ckd-aluminiumrelated---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-aluminiumrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-rupture---primary/output
  ccu002_01-chronic-kidney-disease-ckd-occlusion---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-occlusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-aluminiumrelated---primary/output
  intermittent-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: intermittent-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-occlusion---primary/output
  ccu002_01-chronic-kidney-disease-ckd-peritonitis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-peritonitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: intermittent-ccu002_01-chronic-kidney-disease-ckd---primary/output
  venovenous-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: venovenous-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-peritonitis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-stenosis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: venovenous-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-access---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-access---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-stenosis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-associated---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-access---primary/output
  ccu002_01-chronic-kidney-disease-ckd-embolectomy---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-embolectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-associated---primary/output
  ccu002_01-chronic-kidney-disease-ckd-thrombolysis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-thrombolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-embolectomy---primary/output
  ccu002_01-chronic-kidney-disease-ckd-perfusion---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-perfusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-thrombolysis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-adjustment---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-adjustment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-perfusion---primary/output
  ccu002_01-chronic-kidney-disease-ckd---primary:
    run: ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-adjustment---primary/output
  ccu002_01-chronic-kidney-disease-ckd-donor---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-donor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-microglobulin---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-microglobulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-donor---primary/output
  ccu002_01-chronic-kidney-disease-ckd-aneurysm---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-microglobulin---primary/output
  ccu002_01-chronic-kidney-disease-ckd-placement---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-placement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-aneurysm---primary/output
  ccu002_01-chronic-kidney-disease-ckd-apparatus---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-apparatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-placement---primary/output
  ccu002_01-chronic-kidney-disease-ckd-graft---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-apparatus---primary/output
  ccu002_01-chronic-kidney-disease-ckd-removal---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-graft---primary/output
  ccu002_01-chronic-kidney-disease-ckd-haemorrhage---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-removal---primary/output
  ccu002_01-chronic-kidney-disease-ckd-ambulatory---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-ambulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-haemorrhage---primary/output
  ccu002_01-chronic-kidney-disease-ckd-device---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-device---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-ambulatory---primary/output
  ccu002_01-chronic-kidney-disease-ckd-cutpunctureperfhge---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-cutpunctureperfhge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-device---primary/output
  ccu002_01-chronic-kidney-disease-ckd-dialysate---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-dialysate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-cutpunctureperfhge---primary/output
  ccu002_01-chronic-kidney-disease-ckd-ligation---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-ligation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-dialysate---primary/output
  stent-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: stent-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-ligation---primary/output
  ccu002_01-chronic-kidney-disease-ckd-transplant---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-transplant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: stent-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-artery---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-transplant---primary/output
  ccu002_01-chronic-kidney-disease-ckd-fistula---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-fistula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-artery---primary/output
  ccu002_01-chronic-kidney-disease-ckd-dialysis---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-dialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-fistula---primary/output
  other-ccu002_01-chronic-kidney-disease-ckd---primary:
    run: other-ccu002_01-chronic-kidney-disease-ckd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-dialysis---primary/output
  ccu002_01-chronic-kidney-disease-ckd-precaution---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-precaution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-chronic-kidney-disease-ckd---primary/output
  ccu002_01-chronic-kidney-disease-ckd-transplanted---primary:
    run: ccu002_01-chronic-kidney-disease-ckd-transplanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-precaution---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-kidney-disease-ckd-transplanted---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
