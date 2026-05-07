module tt_um_eml_gate (clk,
    ena,
    rst_n,
    VPWR,
    VGND,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 inout VPWR;
 inout VGND;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire _1000_;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire _1022_;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire _1028_;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire _1037_;
 wire _1038_;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire _1043_;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire _1059_;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire _1101_;
 wire _1102_;
 wire _1103_;
 wire _1104_;
 wire _1105_;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire _1117_;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire _1127_;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1138_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire _1150_;
 wire _1151_;
 wire _1152_;
 wire _1153_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1167_;
 wire _1168_;
 wire _1169_;
 wire _1170_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1174_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire _1184_;
 wire _1185_;
 wire _1186_;
 wire _1187_;
 wire _1188_;
 wire _1189_;
 wire _1190_;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1219_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire _1231_;
 wire _1232_;
 wire _1233_;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1237_;
 wire _1238_;
 wire _1239_;
 wire _1240_;
 wire _1241_;
 wire _1242_;
 wire _1243_;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1248_;
 wire _1249_;
 wire _1250_;
 wire _1251_;
 wire _1252_;
 wire _1253_;
 wire _1254_;
 wire _1255_;
 wire _1256_;
 wire _1257_;
 wire _1258_;
 wire _1259_;
 wire _1260_;
 wire _1261_;
 wire _1262_;
 wire _1263_;
 wire _1264_;
 wire _1265_;
 wire _1266_;
 wire _1267_;
 wire _1268_;
 wire _1269_;
 wire _1270_;
 wire _1271_;
 wire _1272_;
 wire _1273_;
 wire _1274_;
 wire _1275_;
 wire _1276_;
 wire _1277_;
 wire _1278_;
 wire _1279_;
 wire _1280_;
 wire _1281_;
 wire _1282_;
 wire _1283_;
 wire _1284_;
 wire _1285_;
 wire _1286_;
 wire _1287_;
 wire _1288_;
 wire _1289_;
 wire _1290_;
 wire _1291_;
 wire _1292_;
 wire _1293_;
 wire _1294_;
 wire _1295_;
 wire _1296_;
 wire _1297_;
 wire _1298_;
 wire _1299_;
 wire _1300_;
 wire _1301_;
 wire _1302_;
 wire _1303_;
 wire _1304_;
 wire _1305_;
 wire _1306_;
 wire _1307_;
 wire _1308_;
 wire _1309_;
 wire _1310_;
 wire _1311_;
 wire _1312_;
 wire _1313_;
 wire _1314_;
 wire _1315_;
 wire _1316_;
 wire _1317_;
 wire _1318_;
 wire _1319_;
 wire _1320_;
 wire _1321_;
 wire _1322_;
 wire _1323_;
 wire _1324_;
 wire _1325_;
 wire _1326_;
 wire _1327_;
 wire _1328_;
 wire _1329_;
 wire _1330_;
 wire _1331_;
 wire _1332_;
 wire _1333_;
 wire _1334_;
 wire _1335_;
 wire _1336_;
 wire _1337_;
 wire _1338_;
 wire _1339_;
 wire _1340_;
 wire _1341_;
 wire _1342_;
 wire _1343_;
 wire _1344_;
 wire _1345_;
 wire _1346_;
 wire _1347_;
 wire _1348_;
 wire _1349_;
 wire _1350_;
 wire _1351_;
 wire _1352_;
 wire _1353_;
 wire _1354_;
 wire _1355_;
 wire _1356_;
 wire _1357_;
 wire _1358_;
 wire _1359_;
 wire _1360_;
 wire _1361_;
 wire _1362_;
 wire _1363_;
 wire _1364_;
 wire _1365_;
 wire _1366_;
 wire _1367_;
 wire _1368_;
 wire _1369_;
 wire _1370_;
 wire _1371_;
 wire _1372_;
 wire _1373_;
 wire _1374_;
 wire _1375_;
 wire _1376_;
 wire _1377_;
 wire _1378_;
 wire _1379_;
 wire _1380_;
 wire _1381_;
 wire _1382_;
 wire _1383_;
 wire _1384_;
 wire _1385_;
 wire _1386_;
 wire _1387_;
 wire _1388_;
 wire _1389_;
 wire _1390_;
 wire _1391_;
 wire _1392_;
 wire _1393_;
 wire _1394_;
 wire _1395_;
 wire _1396_;
 wire _1397_;
 wire _1398_;
 wire _1399_;
 wire _1400_;
 wire _1401_;
 wire _1402_;
 wire _1403_;
 wire _1404_;
 wire _1405_;
 wire _1406_;
 wire _1407_;
 wire _1408_;
 wire _1409_;
 wire _1410_;
 wire _1411_;
 wire _1412_;
 wire _1413_;
 wire _1414_;
 wire _1415_;
 wire _1416_;
 wire _1417_;
 wire _1418_;
 wire _1419_;
 wire _1420_;
 wire _1421_;
 wire _1422_;
 wire _1423_;
 wire _1424_;
 wire _1425_;
 wire _1426_;
 wire _1427_;
 wire _1428_;
 wire _1429_;
 wire _1430_;
 wire _1431_;
 wire _1432_;
 wire _1433_;
 wire _1434_;
 wire _1435_;
 wire _1436_;
 wire _1437_;
 wire _1438_;
 wire _1439_;
 wire _1440_;
 wire _1441_;
 wire _1442_;
 wire _1443_;
 wire _1444_;
 wire _1445_;
 wire _1446_;
 wire _1447_;
 wire _1448_;
 wire _1449_;
 wire _1450_;
 wire _1451_;
 wire _1452_;
 wire _1453_;
 wire _1454_;
 wire _1455_;
 wire _1456_;
 wire _1457_;
 wire _1458_;
 wire _1459_;
 wire _1460_;
 wire _1461_;
 wire _1462_;
 wire _1463_;
 wire _1464_;
 wire _1465_;
 wire _1466_;
 wire _1467_;
 wire _1468_;
 wire _1469_;
 wire _1470_;
 wire _1471_;
 wire _1472_;
 wire _1473_;
 wire _1474_;
 wire _1475_;
 wire _1476_;
 wire _1477_;
 wire _1478_;
 wire _1479_;
 wire _1480_;
 wire _1481_;
 wire _1482_;
 wire _1483_;
 wire _1484_;
 wire _1485_;
 wire _1486_;
 wire _1487_;
 wire _1488_;
 wire _1489_;
 wire _1490_;
 wire _1491_;
 wire _1492_;
 wire _1493_;
 wire _1494_;
 wire _1495_;
 wire _1496_;
 wire _1497_;
 wire _1498_;
 wire _1499_;
 wire _1500_;
 wire _1501_;
 wire _1502_;
 wire _1503_;
 wire _1504_;
 wire _1505_;
 wire _1506_;
 wire _1507_;
 wire _1508_;
 wire _1509_;
 wire _1510_;
 wire _1511_;
 wire _1512_;
 wire _1513_;
 wire _1514_;
 wire _1515_;
 wire _1516_;
 wire _1517_;
 wire _1518_;
 wire _1519_;
 wire _1520_;
 wire _1521_;
 wire _1522_;
 wire _1523_;
 wire _1524_;
 wire _1525_;
 wire _1526_;
 wire _1527_;
 wire _1528_;
 wire _1529_;
 wire _1530_;
 wire _1531_;
 wire _1532_;
 wire _1533_;
 wire _1534_;
 wire _1535_;
 wire _1536_;
 wire _1537_;
 wire _1538_;
 wire _1539_;
 wire _1540_;
 wire _1541_;
 wire _1542_;
 wire _1543_;
 wire _1544_;
 wire _1545_;
 wire _1546_;
 wire _1547_;
 wire _1548_;
 wire _1549_;
 wire _1550_;
 wire _1551_;
 wire _1552_;
 wire _1553_;
 wire _1554_;
 wire _1555_;
 wire _1556_;
 wire _1557_;
 wire _1558_;
 wire _1559_;
 wire _1560_;
 wire _1561_;
 wire _1562_;
 wire _1563_;
 wire _1564_;
 wire _1565_;
 wire _1566_;
 wire _1567_;
 wire _1568_;
 wire _1569_;
 wire _1570_;
 wire _1571_;
 wire _1572_;
 wire _1573_;
 wire _1574_;
 wire _1575_;
 wire _1576_;
 wire _1577_;
 wire _1578_;
 wire _1579_;
 wire _1580_;
 wire _1581_;
 wire _1582_;
 wire _1583_;
 wire _1584_;
 wire _1585_;
 wire _1586_;
 wire _1587_;
 wire _1588_;
 wire _1589_;
 wire _1590_;
 wire _1591_;
 wire _1592_;
 wire _1593_;
 wire _1594_;
 wire _1595_;
 wire _1596_;
 wire _1597_;
 wire _1598_;
 wire _1599_;
 wire _1600_;
 wire _1601_;
 wire _1602_;
 wire _1603_;
 wire _1604_;
 wire _1605_;
 wire _1606_;
 wire _1607_;
 wire _1608_;
 wire _1609_;
 wire _1610_;
 wire _1611_;
 wire _1612_;
 wire _1613_;
 wire _1614_;
 wire _1615_;
 wire _1616_;
 wire _1617_;
 wire _1618_;
 wire _1619_;
 wire _1620_;
 wire _1621_;
 wire _1622_;
 wire _1623_;
 wire _1624_;
 wire _1625_;
 wire _1626_;
 wire _1627_;
 wire _1628_;
 wire _1629_;
 wire _1630_;
 wire _1631_;
 wire _1632_;
 wire _1633_;
 wire _1634_;
 wire _1635_;
 wire _1636_;
 wire _1637_;
 wire _1638_;
 wire _1639_;
 wire _1640_;
 wire _1641_;
 wire _1642_;
 wire _1643_;
 wire _1644_;
 wire _1645_;
 wire _1646_;
 wire _1647_;
 wire _1648_;
 wire _1649_;
 wire _1650_;
 wire _1651_;
 wire _1652_;
 wire _1653_;
 wire _1654_;
 wire _1655_;
 wire _1656_;
 wire _1657_;
 wire _1658_;
 wire _1659_;
 wire _1660_;
 wire _1661_;
 wire _1662_;
 wire _1663_;
 wire _1664_;
 wire _1665_;
 wire _1666_;
 wire _1667_;
 wire _1668_;
 wire _1669_;
 wire _1670_;
 wire _1671_;
 wire _1672_;
 wire _1673_;
 wire _1674_;
 wire _1675_;
 wire _1676_;
 wire _1677_;
 wire _1678_;
 wire _1679_;
 wire _1680_;
 wire _1681_;
 wire _1682_;
 wire _1683_;
 wire _1684_;
 wire _1685_;
 wire _1686_;
 wire _1687_;
 wire _1688_;
 wire _1689_;
 wire _1690_;
 wire _1691_;
 wire _1692_;
 wire _1693_;
 wire _1694_;
 wire _1695_;
 wire _1696_;
 wire _1697_;
 wire _1698_;
 wire _1699_;
 wire _1700_;
 wire _1701_;
 wire _1702_;
 wire _1703_;
 wire _1704_;
 wire _1705_;
 wire _1706_;
 wire _1707_;
 wire _1708_;
 wire _1709_;
 wire _1710_;
 wire _1711_;
 wire _1712_;
 wire _1713_;
 wire _1714_;
 wire _1715_;
 wire _1716_;
 wire _1717_;
 wire _1718_;
 wire _1719_;
 wire _1720_;
 wire _1721_;
 wire _1722_;
 wire _1723_;
 wire _1724_;
 wire _1725_;
 wire _1726_;
 wire _1727_;
 wire _1728_;
 wire _1729_;
 wire _1730_;
 wire _1731_;
 wire _1732_;
 wire _1733_;
 wire _1734_;
 wire _1735_;
 wire _1736_;
 wire _1737_;
 wire _1738_;
 wire _1739_;
 wire _1740_;
 wire _1741_;
 wire _1742_;
 wire _1743_;
 wire _1744_;
 wire _1745_;
 wire _1746_;
 wire _1747_;
 wire _1748_;
 wire _1749_;
 wire _1750_;
 wire _1751_;
 wire _1752_;
 wire _1753_;
 wire _1754_;
 wire _1755_;
 wire _1756_;
 wire _1757_;
 wire _1758_;
 wire _1759_;
 wire _1760_;
 wire _1761_;
 wire _1762_;
 wire _1763_;
 wire _1764_;
 wire _1765_;
 wire _1766_;
 wire _1767_;
 wire _1768_;
 wire _1769_;
 wire _1770_;
 wire _1771_;
 wire _1772_;
 wire _1773_;
 wire _1774_;
 wire _1775_;
 wire _1776_;
 wire _1777_;
 wire _1778_;
 wire _1779_;
 wire _1780_;
 wire _1781_;
 wire _1782_;
 wire _1783_;
 wire _1784_;
 wire _1785_;
 wire _1786_;
 wire _1787_;
 wire _1788_;
 wire _1789_;
 wire _1790_;
 wire _1791_;
 wire _1792_;
 wire _1793_;
 wire _1794_;
 wire _1795_;
 wire _1796_;
 wire _1797_;
 wire _1798_;
 wire _1799_;
 wire _1800_;
 wire _1801_;
 wire _1802_;
 wire _1803_;
 wire _1804_;
 wire _1805_;
 wire _1806_;
 wire _1807_;
 wire _1808_;
 wire _1809_;
 wire _1810_;
 wire _1811_;
 wire _1812_;
 wire _1813_;
 wire _1814_;
 wire _1815_;
 wire _1816_;
 wire _1817_;
 wire _1818_;
 wire _1819_;
 wire _1820_;
 wire _1821_;
 wire _1822_;
 wire _1823_;
 wire _1824_;
 wire _1825_;
 wire _1826_;
 wire _1827_;
 wire _1828_;
 wire _1829_;
 wire _1830_;
 wire _1831_;
 wire _1832_;
 wire _1833_;
 wire _1834_;
 wire _1835_;
 wire _1836_;
 wire _1837_;
 wire _1838_;
 wire _1839_;
 wire _1840_;
 wire _1841_;
 wire _1842_;
 wire _1843_;
 wire _1844_;
 wire _1845_;
 wire _1846_;
 wire _1847_;
 wire _1848_;
 wire _1849_;
 wire _1850_;
 wire _1851_;
 wire _1852_;
 wire _1853_;
 wire _1854_;
 wire _1855_;
 wire _1856_;
 wire _1857_;
 wire _1858_;
 wire _1859_;
 wire _1860_;
 wire _1861_;
 wire _1862_;
 wire _1863_;
 wire _1864_;
 wire _1865_;
 wire _1866_;
 wire _1867_;
 wire _1868_;
 wire _1869_;
 wire _1870_;
 wire _1871_;
 wire _1872_;
 wire _1873_;
 wire _1874_;
 wire _1875_;
 wire _1876_;
 wire _1877_;
 wire _1878_;
 wire _1879_;
 wire _1880_;
 wire _1881_;
 wire _1882_;
 wire _1883_;
 wire _1884_;
 wire _1885_;
 wire _1886_;
 wire _1887_;
 wire _1888_;
 wire _1889_;
 wire _1890_;
 wire _1891_;
 wire _1892_;
 wire _1893_;
 wire _1894_;
 wire _1895_;
 wire _1896_;
 wire _1897_;
 wire _1898_;
 wire _1899_;
 wire _1900_;
 wire _1901_;
 wire _1902_;
 wire _1903_;
 wire _1904_;
 wire _1905_;
 wire _1906_;
 wire _1907_;
 wire _1908_;
 wire _1909_;
 wire _1910_;
 wire _1911_;
 wire _1912_;
 wire _1913_;
 wire _1914_;
 wire _1915_;
 wire _1916_;
 wire _1917_;
 wire _1918_;
 wire _1919_;
 wire _1920_;
 wire _1921_;
 wire _1922_;
 wire _1923_;
 wire _1924_;
 wire _1925_;
 wire _1926_;
 wire _1927_;
 wire _1928_;
 wire _1929_;
 wire _1930_;
 wire busy_ext;
 wire done_ext;
 wire error_ext;
 wire net1;
 wire rx_full_ext;
 wire ser_out;
 wire tx_pending_ext;
 wire \u_eml_serial_gate.gate_domain_error ;
 wire \u_eml_serial_gate.gate_error ;
 wire \u_eml_serial_gate.gate_func_reg[0] ;
 wire \u_eml_serial_gate.gate_overflow ;
 wire \u_eml_serial_gate.gate_result[0] ;
 wire \u_eml_serial_gate.gate_result[10] ;
 wire \u_eml_serial_gate.gate_result[11] ;
 wire \u_eml_serial_gate.gate_result[12] ;
 wire \u_eml_serial_gate.gate_result[13] ;
 wire \u_eml_serial_gate.gate_result[14] ;
 wire \u_eml_serial_gate.gate_result[15] ;
 wire \u_eml_serial_gate.gate_result[1] ;
 wire \u_eml_serial_gate.gate_result[2] ;
 wire \u_eml_serial_gate.gate_result[3] ;
 wire \u_eml_serial_gate.gate_result[4] ;
 wire \u_eml_serial_gate.gate_result[5] ;
 wire \u_eml_serial_gate.gate_result[6] ;
 wire \u_eml_serial_gate.gate_result[7] ;
 wire \u_eml_serial_gate.gate_result[8] ;
 wire \u_eml_serial_gate.gate_result[9] ;
 wire \u_eml_serial_gate.gate_start_reg ;
 wire \u_eml_serial_gate.gate_x_reg[0] ;
 wire \u_eml_serial_gate.gate_x_reg[10] ;
 wire \u_eml_serial_gate.gate_x_reg[11] ;
 wire \u_eml_serial_gate.gate_x_reg[12] ;
 wire \u_eml_serial_gate.gate_x_reg[13] ;
 wire \u_eml_serial_gate.gate_x_reg[14] ;
 wire \u_eml_serial_gate.gate_x_reg[15] ;
 wire \u_eml_serial_gate.gate_x_reg[1] ;
 wire \u_eml_serial_gate.gate_x_reg[2] ;
 wire \u_eml_serial_gate.gate_x_reg[3] ;
 wire \u_eml_serial_gate.gate_x_reg[4] ;
 wire \u_eml_serial_gate.gate_x_reg[5] ;
 wire \u_eml_serial_gate.gate_x_reg[6] ;
 wire \u_eml_serial_gate.gate_x_reg[7] ;
 wire \u_eml_serial_gate.gate_x_reg[8] ;
 wire \u_eml_serial_gate.gate_x_reg[9] ;
 wire \u_eml_serial_gate.gate_y_reg[0] ;
 wire \u_eml_serial_gate.gate_y_reg[10] ;
 wire \u_eml_serial_gate.gate_y_reg[11] ;
 wire \u_eml_serial_gate.gate_y_reg[12] ;
 wire \u_eml_serial_gate.gate_y_reg[13] ;
 wire \u_eml_serial_gate.gate_y_reg[14] ;
 wire \u_eml_serial_gate.gate_y_reg[15] ;
 wire \u_eml_serial_gate.gate_y_reg[1] ;
 wire \u_eml_serial_gate.gate_y_reg[2] ;
 wire \u_eml_serial_gate.gate_y_reg[3] ;
 wire \u_eml_serial_gate.gate_y_reg[4] ;
 wire \u_eml_serial_gate.gate_y_reg[5] ;
 wire \u_eml_serial_gate.gate_y_reg[6] ;
 wire \u_eml_serial_gate.gate_y_reg[7] ;
 wire \u_eml_serial_gate.gate_y_reg[8] ;
 wire \u_eml_serial_gate.gate_y_reg[9] ;
 wire \u_eml_serial_gate.op_a_reg[0] ;
 wire \u_eml_serial_gate.op_a_reg[10] ;
 wire \u_eml_serial_gate.op_a_reg[11] ;
 wire \u_eml_serial_gate.op_a_reg[12] ;
 wire \u_eml_serial_gate.op_a_reg[13] ;
 wire \u_eml_serial_gate.op_a_reg[14] ;
 wire \u_eml_serial_gate.op_a_reg[15] ;
 wire \u_eml_serial_gate.op_a_reg[1] ;
 wire \u_eml_serial_gate.op_a_reg[2] ;
 wire \u_eml_serial_gate.op_a_reg[3] ;
 wire \u_eml_serial_gate.op_a_reg[4] ;
 wire \u_eml_serial_gate.op_a_reg[5] ;
 wire \u_eml_serial_gate.op_a_reg[6] ;
 wire \u_eml_serial_gate.op_a_reg[7] ;
 wire \u_eml_serial_gate.op_a_reg[8] ;
 wire \u_eml_serial_gate.op_a_reg[9] ;
 wire \u_eml_serial_gate.op_b_reg[0] ;
 wire \u_eml_serial_gate.op_b_reg[10] ;
 wire \u_eml_serial_gate.op_b_reg[11] ;
 wire \u_eml_serial_gate.op_b_reg[12] ;
 wire \u_eml_serial_gate.op_b_reg[13] ;
 wire \u_eml_serial_gate.op_b_reg[14] ;
 wire \u_eml_serial_gate.op_b_reg[15] ;
 wire \u_eml_serial_gate.op_b_reg[1] ;
 wire \u_eml_serial_gate.op_b_reg[2] ;
 wire \u_eml_serial_gate.op_b_reg[3] ;
 wire \u_eml_serial_gate.op_b_reg[4] ;
 wire \u_eml_serial_gate.op_b_reg[5] ;
 wire \u_eml_serial_gate.op_b_reg[6] ;
 wire \u_eml_serial_gate.op_b_reg[7] ;
 wire \u_eml_serial_gate.op_b_reg[8] ;
 wire \u_eml_serial_gate.op_b_reg[9] ;
 wire \u_eml_serial_gate.rx_bit_count_reg[0] ;
 wire \u_eml_serial_gate.rx_bit_count_reg[1] ;
 wire \u_eml_serial_gate.rx_bit_count_reg[2] ;
 wire \u_eml_serial_gate.rx_byte_count_reg[0] ;
 wire \u_eml_serial_gate.rx_byte_count_reg[1] ;
 wire \u_eml_serial_gate.rx_byte_count_reg[2] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[0] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[1] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[2] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[3] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[4] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[5] ;
 wire \u_eml_serial_gate.rx_byte_shift_reg[6] ;
 wire \u_eml_serial_gate.state_reg[0] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[0] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[1] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[2] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[3] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[4] ;
 wire \u_eml_serial_gate.tx_bit_count_reg[5] ;
 wire \u_eml_serial_gate.tx_byte_idx_reg[0] ;
 wire \u_eml_serial_gate.tx_byte_idx_reg[1] ;
 wire \u_eml_serial_gate.tx_byte_idx_reg[2] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[0] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[1] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[2] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[3] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[4] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[5] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[6] ;
 wire \u_eml_serial_gate.tx_byte_shift_reg[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_mode_r[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_start_r ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_a_r[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_b_r[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_b_r[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.mul_start_r ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_k[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.reg_x[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.state[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.state[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.state[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.state[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.is_vector ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[4] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[5] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[6] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[7] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[8] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[9] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[2] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[3] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[10] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[11] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[12] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[13] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[14] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[15] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[0] ;
 wire \u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ;
 wire net2;
 wire net3;
 wire net4;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire clknet_leaf_0_clk;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net;
 wire clknet_leaf_1_clk;
 wire clknet_leaf_2_clk;
 wire clknet_leaf_3_clk;
 wire clknet_leaf_4_clk;
 wire clknet_leaf_5_clk;
 wire clknet_leaf_6_clk;
 wire clknet_leaf_7_clk;
 wire clknet_leaf_8_clk;
 wire clknet_leaf_9_clk;
 wire clknet_leaf_10_clk;
 wire clknet_leaf_11_clk;
 wire clknet_leaf_12_clk;
 wire clknet_leaf_13_clk;
 wire clknet_leaf_14_clk;
 wire clknet_leaf_15_clk;
 wire clknet_leaf_16_clk;
 wire clknet_leaf_17_clk;
 wire clknet_leaf_18_clk;
 wire clknet_leaf_19_clk;
 wire clknet_leaf_20_clk;
 wire clknet_leaf_21_clk;
 wire clknet_leaf_22_clk;
 wire clknet_leaf_23_clk;
 wire clknet_leaf_24_clk;
 wire clknet_leaf_25_clk;
 wire clknet_leaf_26_clk;
 wire clknet_leaf_27_clk;
 wire clknet_leaf_28_clk;
 wire clknet_leaf_29_clk;
 wire clknet_leaf_30_clk;
 wire clknet_leaf_31_clk;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire net249;
 wire net250;
 wire net251;
 wire net252;
 wire net253;
 wire net254;
 wire net255;
 wire net256;
 wire net257;
 wire net258;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;

 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(_0282_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_10 (.DIODE(_1367_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_11 (.DIODE(_1368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_12 (.DIODE(_1395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_13 (.DIODE(_1424_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_14 (.DIODE(_1561_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_15 (.DIODE(_1563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_16 (.DIODE(_1601_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_17 (.DIODE(_1611_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_18 (.DIODE(_1674_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_19 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(_0328_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_20 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_21 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_22 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_23 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_24 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_25 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_26 (.DIODE(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_27 (.DIODE(_0331_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_28 (.DIODE(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_29 (.DIODE(_0643_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(_0335_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_30 (.DIODE(_1396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_31 (.DIODE(_1582_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_32 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_33 (.DIODE(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_34 (.DIODE(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_35 (.DIODE(_0464_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_36 (.DIODE(_1585_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_37 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_38 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_39 (.DIODE(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(_0618_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_7 (.DIODE(_0698_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_8 (.DIODE(_0715_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_9 (.DIODE(_0730_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_95 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_219 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_231 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_234 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_274 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_89 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_163 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_274 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_152 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_202 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_226 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_229 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_285 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_15_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_266 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_15_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_173 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_16_216 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_16_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_16_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_16_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_16_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_17_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_17_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_17_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_210 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_240 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_260 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_20_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_168 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_176 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_20_224 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_294 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_325 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_21_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_21_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_21_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_184 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_140 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_182 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_23_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_84 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_174 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_25_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_273 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_26_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_26_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_133 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_245 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_27_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_27_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_112 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_219 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_236 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_2_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_2_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_151 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_30_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_271 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_30_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_30_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_30_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_30_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_134 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_204 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_246 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_289 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_184 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_316 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_134 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_254 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_133 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_147 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_176 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_212 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_300 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_316 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_35_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_35_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_35_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_84 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_154 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_170 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_37_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_37_294 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_320 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_37_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_112 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_38_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_38_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_39_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_39_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_39_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_3_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_40_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_40_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_40_320 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_40_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_40_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_40_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_40_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_100 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_212 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_310 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_313 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_321 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_41_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_41_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_41_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_105 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_42_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_190 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_42_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_275 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_42_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_42_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_42_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_42_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_198 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_235 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_310 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_327 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_43_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_43_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_43_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_44_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_133 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_44_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_44_176 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_44_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_44_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_44_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_44_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_44_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_44_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_177 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_45_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_45_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_45_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_45_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_45_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_183 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_46_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_46_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_46_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_47_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_47_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_236 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_260 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_47_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_47_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_47_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_47_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_48_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_48_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_236 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_48_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_48_259 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_48_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_48_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_48_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_48_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_48_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_48_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_49_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_49_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_49_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_49_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_49_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_49_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_4_177 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_212 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_287 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_50_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_50_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_50_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_51_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_51_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_246 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_284 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_51_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_51_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_51_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_52_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_52_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_53_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_53_189 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_53_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_53_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_53_246 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_53_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_53_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_53_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_53_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_173 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_54_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_314 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_54_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_54_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_54_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_55_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_55_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_55_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_55_254 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_55_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_55_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_55_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_55_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_115 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_236 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_56_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_299 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_56_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_56_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_56_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_57_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_57_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_189 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_57_297 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_57_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_57_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_57_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_57_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_241 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_58_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_58_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_58_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_59_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_59_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_59_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_59_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_59_299 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_59_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_59_329 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_59_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_59_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_59_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_243 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_90 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_60_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_60_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_60_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_61_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_61_217 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_235 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_238 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_61_293 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_61_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_61_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_61_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_61_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_62_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_62_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_272 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_289 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_315 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_62_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_62_97 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_63_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_63_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_303 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_63_321 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_63_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_63_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_63_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_146 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_64_154 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_64_180 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_320 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_64_323 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_330 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_64_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_64_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_64_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_65_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_147 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_65_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_65_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_65_301 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_319 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_322 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_65_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_65_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_65_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_105 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_171 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_299 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_66_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_324 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_66_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_66_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_67_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_257 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_288 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_296 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_315 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_326 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_329 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_67_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_67_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_67_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_67_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_68_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_175 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_191 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_68_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_68_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_282 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_68_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_319 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_322 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_325 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_328 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_68_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_68_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_68_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_68_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_69_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_182 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_198 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_201 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_69_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_69_284 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_291 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_294 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_310 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_327 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_69_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_69_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_6_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_291 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_6_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_70_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_70_171 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_70_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_205 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_282 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_285 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_293 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_296 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_70_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_302 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_70_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_70_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_70_95 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_100 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_71_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_140 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_174 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_190 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_198 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_266 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_269 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_286 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_71_296 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_71_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_71_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_71_97 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_147 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_182 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_205 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_72_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_243 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_72_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_72_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_72_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_72_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_72_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_72_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_73_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_73_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_73_184 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_73_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_73_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_73_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_73_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_73_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_73_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_73_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_73_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_73_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_73_97 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_134 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_74_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_177 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_74_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_274 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_74_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_75_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_176 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_75_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_243 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_75_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_75_310 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_75_313 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_75_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_75_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_76_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_76_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_76_200 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_273 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_76_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_76_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_76_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_76_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_77_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_77_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_77_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_77_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_77_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_77_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_78_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_78_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_78_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_78_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_78_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_79_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_79_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_79_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_79_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_79_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_79_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_79_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_79_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_79_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_199 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_259 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_310 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_7_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_146 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_80_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_80_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_80_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_112 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_115 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_171 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_204 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_8_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_263 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_266 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_9_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_9_204 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_9_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_9_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_289 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_95 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_97 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_100 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_105 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_107 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_112 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_114 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_115 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_117 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_84 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Left_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Right_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Left_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Right_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Left_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Right_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Left_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Right_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Left_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Right_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Left_133 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Right_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Left_134 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Right_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Left_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Right_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Left_136 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Right_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Left_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Right_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Left_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Right_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Left_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Right_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Left_140 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Right_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Left_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Right_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Left_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Right_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Left_143 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Right_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Left_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Right_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Left_145 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Right_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Left_146 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Right_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_66_Left_147 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_66_Right_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_67_Left_148 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_67_Right_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_68_Left_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_68_Right_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_69_Left_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_69_Right_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_87 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_70_Left_151 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_70_Right_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_71_Left_152 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_71_Right_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_72_Left_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_72_Right_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_73_Left_154 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_73_Right_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_74_Left_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_74_Right_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_75_Left_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_75_Right_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_76_Left_157 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_76_Right_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_77_Left_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_77_Right_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_78_Left_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_78_Right_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_79_Left_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_79_Right_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_80_Left_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_80_Right_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_89 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_90 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_162 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_163 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_164 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_165 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_166 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_167 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_168 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_169 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_170 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_171 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_172 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_222 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_223 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_224 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_225 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_226 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_227 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_228 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_229 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_230 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_231 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_232 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_233 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_234 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_235 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_236 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_237 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_238 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_239 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_240 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_241 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_242 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_243 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_244 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_245 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_246 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_247 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_248 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_249 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_250 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_251 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_252 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_253 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_254 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_255 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_256 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_257 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_258 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_259 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_260 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_261 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_262 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_263 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_264 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_265 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_266 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_267 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_268 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_269 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_270 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_271 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_272 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_273 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_274 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_275 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_276 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_173 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_174 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_175 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_176 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_177 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_277 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_278 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_279 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_280 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_281 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_282 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_283 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_284 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_285 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_286 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_287 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_288 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_289 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_290 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_291 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_292 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_293 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_294 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_295 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_296 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_297 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_298 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_299 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_300 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_301 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_302 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_303 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_304 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_305 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_306 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_307 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_308 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_309 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_310 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_311 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_312 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_313 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_314 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_315 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_316 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_317 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_318 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_319 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_320 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_321 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_322 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_323 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_324 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_325 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_326 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_327 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_328 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_329 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_330 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_331 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_178 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_179 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_180 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_181 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_182 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_183 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_332 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_333 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_334 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_335 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_336 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_337 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_338 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_339 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_340 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_341 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_342 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_343 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_344 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_345 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_346 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_347 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_348 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_349 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_350 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_351 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_352 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_353 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_354 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_355 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_356 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_357 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_358 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_359 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_360 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_361 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_362 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_363 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_364 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_365 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_366 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_367 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_368 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_369 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_370 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_371 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_372 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_373 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_374 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_375 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_376 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_377 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_378 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_379 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_380 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_381 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_382 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_383 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_384 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_385 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_386 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_184 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_185 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_186 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_187 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_188 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_387 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_388 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_389 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_390 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_391 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_392 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_393 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_394 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_395 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_396 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_397 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_398 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_399 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_400 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_401 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_402 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_403 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_404 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_405 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_406 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_407 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_408 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_409 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_410 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_411 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_412 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_413 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_414 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_415 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_416 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_417 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_418 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_419 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_420 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_421 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_422 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_423 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_424 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_425 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_426 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_427 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_428 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_429 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_430 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_431 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_432 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_433 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_434 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_435 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_436 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_437 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_438 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_439 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_440 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_441 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_189 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_190 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_191 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_192 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_193 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_194 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_442 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_443 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_444 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_445 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_446 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_447 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_448 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_449 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_450 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_451 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_452 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_453 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_454 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_455 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_456 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_457 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_458 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_459 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_460 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_461 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_462 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_463 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_464 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_465 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_466 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_467 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_468 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_469 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_470 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_471 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_472 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_473 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_474 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_475 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_476 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_477 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_478 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_479 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_480 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_481 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_482 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_483 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_484 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_485 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_486 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_487 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_488 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_489 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_490 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_491 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_492 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_493 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_494 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_495 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_496 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_195 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_196 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_197 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_198 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_199 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_497 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_498 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_499 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_500 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_501 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_502 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_503 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_504 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_505 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_506 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_507 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_508 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_509 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_510 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_511 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_512 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_513 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_514 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_515 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_516 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_517 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_518 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_519 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_520 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_521 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_522 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_523 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_524 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_525 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_526 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_527 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_528 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_529 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_530 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_531 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_532 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_533 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_534 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_66_535 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_67_536 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_67_537 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_67_538 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_67_539 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_67_540 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_541 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_542 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_543 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_544 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_545 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_68_546 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_69_547 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_69_548 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_69_549 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_69_550 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_69_551 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_200 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_201 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_202 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_203 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_204 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_205 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_552 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_553 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_554 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_555 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_556 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_70_557 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_71_558 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_71_559 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_71_560 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_71_561 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_71_562 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_563 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_564 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_565 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_566 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_567 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_72_568 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_73_569 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_73_570 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_73_571 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_73_572 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_73_573 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_574 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_575 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_576 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_577 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_578 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_74_579 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_75_580 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_75_581 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_75_582 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_75_583 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_75_584 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_585 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_586 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_587 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_588 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_589 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_76_590 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_77_591 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_77_592 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_77_593 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_77_594 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_77_595 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_596 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_597 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_598 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_599 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_600 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_78_601 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_79_602 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_79_603 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_79_604 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_79_605 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_79_606 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_206 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_207 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_208 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_209 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_210 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_607 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_608 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_609 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_610 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_611 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_612 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_613 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_614 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_615 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_616 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_80_617 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_211 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_212 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_213 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_214 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_215 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_216 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_217 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_218 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_219 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_220 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_221 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__inv_2 _1931_ (.A(\u_eml_serial_gate.state_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1672_));
 sky130_fd_sc_hd__inv_2 _1932_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1673_));
 sky130_fd_sc_hd__inv_2 _1933_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1674_));
 sky130_fd_sc_hd__inv_2 _1934_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_start_r ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1675_));
 sky130_fd_sc_hd__inv_2 _1935_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1676_));
 sky130_fd_sc_hd__inv_2 _1936_ (.A(net140),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1677_));
 sky130_fd_sc_hd__inv_2 _1937_ (.A(tx_pending_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1678_));
 sky130_fd_sc_hd__inv_2 _1938_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1679_));
 sky130_fd_sc_hd__inv_2 _1939_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1680_));
 sky130_fd_sc_hd__inv_2 _1940_ (.A(\u_eml_serial_gate.gate_y_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1681_));
 sky130_fd_sc_hd__inv_2 _1941_ (.A(net138),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1682_));
 sky130_fd_sc_hd__inv_2 _1942_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1683_));
 sky130_fd_sc_hd__inv_2 _1943_ (.A(net134),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1684_));
 sky130_fd_sc_hd__inv_2 _1944_ (.A(net137),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1685_));
 sky130_fd_sc_hd__inv_2 _1945_ (.A(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1686_));
 sky130_fd_sc_hd__inv_2 _1946_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1687_));
 sky130_fd_sc_hd__inv_2 _1947_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1688_));
 sky130_fd_sc_hd__inv_2 _1948_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1689_));
 sky130_fd_sc_hd__inv_2 _1949_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1690_));
 sky130_fd_sc_hd__inv_2 _1950_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1691_));
 sky130_fd_sc_hd__inv_2 _1951_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1692_));
 sky130_fd_sc_hd__inv_2 _1952_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1693_));
 sky130_fd_sc_hd__inv_2 _1953_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1694_));
 sky130_fd_sc_hd__inv_2 _1954_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1695_));
 sky130_fd_sc_hd__inv_2 _1955_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1696_));
 sky130_fd_sc_hd__inv_2 _1956_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1697_));
 sky130_fd_sc_hd__inv_2 _1957_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1698_));
 sky130_fd_sc_hd__inv_2 _1958_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1699_));
 sky130_fd_sc_hd__inv_2 _1959_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1700_));
 sky130_fd_sc_hd__inv_2 _1960_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1701_));
 sky130_fd_sc_hd__inv_2 _1961_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1702_));
 sky130_fd_sc_hd__inv_2 _1962_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1703_));
 sky130_fd_sc_hd__inv_2 _1963_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1704_));
 sky130_fd_sc_hd__inv_2 _1964_ (.A(\u_eml_serial_gate.rx_byte_count_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1705_));
 sky130_fd_sc_hd__inv_2 _1965_ (.A(\u_eml_serial_gate.tx_bit_count_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1706_));
 sky130_fd_sc_hd__nand2_2 _1966_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1707_));
 sky130_fd_sc_hd__or2_2 _1967_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[3] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1708_));
 sky130_fd_sc_hd__nand2_2 _1968_ (.A(_1676_),
    .B(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1709_));
 sky130_fd_sc_hd__nand2b_2 _1969_ (.A_N(net144),
    .B(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1710_));
 sky130_fd_sc_hd__o22a_2 _1970_ (.A1(_1707_),
    .A2(_1708_),
    .B1(_1709_),
    .B2(_1710_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1711_));
 sky130_fd_sc_hd__and2_2 _1971_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .B(_1674_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1712_));
 sky130_fd_sc_hd__inv_2 _1972_ (.A(_1712_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1713_));
 sky130_fd_sc_hd__nor2_2 _1973_ (.A(_1711_),
    .B(_1713_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0055_));
 sky130_fd_sc_hd__or4_2 _1974_ (.A(_1672_),
    .B(_1676_),
    .C(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .D(_1710_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1714_));
 sky130_fd_sc_hd__inv_2 _1975_ (.A(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0002_));
 sky130_fd_sc_hd__and2_2 _1976_ (.A(\u_eml_serial_gate.tx_byte_shift_reg[7] ),
    .B(tx_pending_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(ser_out));
 sky130_fd_sc_hd__or2_2 _1977_ (.A(tx_pending_ext),
    .B(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1715_));
 sky130_fd_sc_hd__nor2_2 _1978_ (.A(\u_eml_serial_gate.state_reg[0] ),
    .B(_1715_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1716_));
 sky130_fd_sc_hd__and3_2 _1979_ (.A(rx_full_ext),
    .B(net4),
    .C(_1716_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0001_));
 sky130_fd_sc_hd__inv_2 _1980_ (.A(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1717_));
 sky130_fd_sc_hd__and2_2 _1981_ (.A(\u_eml_serial_gate.gate_func_reg[0] ),
    .B(_1717_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0000_));
 sky130_fd_sc_hd__or3_2 _1982_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .C(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1718_));
 sky130_fd_sc_hd__or2_2 _1983_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[3] ),
    .B(_1718_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1719_));
 sky130_fd_sc_hd__or2_2 _1984_ (.A(\u_eml_serial_gate.state_reg[0] ),
    .B(_1719_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(busy_ext));
 sky130_fd_sc_hd__nor2_2 _1985_ (.A(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .B(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1720_));
 sky130_fd_sc_hd__and4bb_2 _1986_ (.A_N(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .B_N(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .C(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .D(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1721_));
 sky130_fd_sc_hd__and4_2 _1987_ (.A(net2),
    .B(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .C(_1720_),
    .D(_1721_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1722_));
 sky130_fd_sc_hd__inv_2 _1988_ (.A(_1722_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1723_));
 sky130_fd_sc_hd__nand3_2 _1989_ (.A(\u_eml_serial_gate.rx_bit_count_reg[0] ),
    .B(\u_eml_serial_gate.rx_bit_count_reg[1] ),
    .C(\u_eml_serial_gate.rx_bit_count_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1724_));
 sky130_fd_sc_hd__or2_2 _1990_ (.A(_1722_),
    .B(_1724_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1725_));
 sky130_fd_sc_hd__o21ba_2 _1991_ (.A1(rx_full_ext),
    .A2(\u_eml_serial_gate.rx_byte_count_reg[2] ),
    .B1_N(_1725_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1726_));
 sky130_fd_sc_hd__or2_2 _1992_ (.A(net4),
    .B(busy_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1727_));
 sky130_fd_sc_hd__o211a_2 _1993_ (.A1(_1726_),
    .A2(_1727_),
    .B1(_1678_),
    .C1(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1728_));
 sky130_fd_sc_hd__o32a_2 _1994_ (.A1(\u_eml_serial_gate.state_reg[0] ),
    .A2(rx_full_ext),
    .A3(_1715_),
    .B1(_1728_),
    .B2(error_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1729_));
 sky130_fd_sc_hd__o22a_2 _1995_ (.A1(_1717_),
    .A2(_1719_),
    .B1(_1729_),
    .B2(net4),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0003_));
 sky130_fd_sc_hd__or3b_2 _1996_ (.A(_1727_),
    .B(tx_pending_ext),
    .C_N(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1730_));
 sky130_fd_sc_hd__inv_2 _1997_ (.A(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1731_));
 sky130_fd_sc_hd__or4b_2 _1998_ (.A(rx_full_ext),
    .B(\u_eml_serial_gate.rx_byte_count_reg[2] ),
    .C(\u_eml_serial_gate.rx_byte_count_reg[1] ),
    .D_N(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1732_));
 sky130_fd_sc_hd__or3_2 _1999_ (.A(_1725_),
    .B(net38),
    .C(_1732_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1733_));
 sky130_fd_sc_hd__nor3_2 _2000_ (.A(_1725_),
    .B(net38),
    .C(_1732_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1734_));
 sky130_fd_sc_hd__o221a_2 _2001_ (.A1(net2),
    .A2(_1733_),
    .B1(_1734_),
    .B2(\u_eml_serial_gate.op_a_reg[0] ),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0005_));
 sky130_fd_sc_hd__o221a_2 _2002_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .A2(_1733_),
    .B1(_1734_),
    .B2(\u_eml_serial_gate.op_a_reg[1] ),
    .C1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0012_));
 sky130_fd_sc_hd__o221a_2 _2003_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .A2(_1733_),
    .B1(_1734_),
    .B2(\u_eml_serial_gate.op_a_reg[2] ),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0013_));
 sky130_fd_sc_hd__o221a_2 _2004_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .A2(_1733_),
    .B1(_1734_),
    .B2(\u_eml_serial_gate.op_a_reg[3] ),
    .C1(net104),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0014_));
 sky130_fd_sc_hd__o221a_2 _2005_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .A2(_1733_),
    .B1(_1734_),
    .B2(\u_eml_serial_gate.op_a_reg[4] ),
    .C1(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0015_));
 sky130_fd_sc_hd__mux2_1 _2006_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .A1(\u_eml_serial_gate.op_a_reg[5] ),
    .S(_1733_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1735_));
 sky130_fd_sc_hd__mux2_1 _2007_ (.A0(\u_eml_serial_gate.gate_result[0] ),
    .A1(_1735_),
    .S(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0016_));
 sky130_fd_sc_hd__mux2_1 _2008_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .A1(\u_eml_serial_gate.op_a_reg[6] ),
    .S(_1733_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1736_));
 sky130_fd_sc_hd__mux2_1 _2009_ (.A0(\u_eml_serial_gate.gate_result[1] ),
    .A1(_1736_),
    .S(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0017_));
 sky130_fd_sc_hd__mux2_1 _2010_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .A1(\u_eml_serial_gate.op_a_reg[7] ),
    .S(_1733_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1737_));
 sky130_fd_sc_hd__mux2_1 _2011_ (.A0(\u_eml_serial_gate.gate_result[2] ),
    .A1(_1737_),
    .S(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0018_));
 sky130_fd_sc_hd__or2_2 _2012_ (.A(\u_eml_serial_gate.rx_byte_count_reg[2] ),
    .B(_1724_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1738_));
 sky130_fd_sc_hd__nand2_2 _2013_ (.A(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .B(\u_eml_serial_gate.rx_byte_count_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1739_));
 sky130_fd_sc_hd__or2_2 _2014_ (.A(_1738_),
    .B(_1739_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1740_));
 sky130_fd_sc_hd__o21bai_2 _2015_ (.A1(net38),
    .A2(_1740_),
    .B1_N(rx_full_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1741_));
 sky130_fd_sc_hd__and3_2 _2016_ (.A(\u_eml_serial_gate.rx_bit_count_reg[0] ),
    .B(\u_eml_serial_gate.rx_bit_count_reg[1] ),
    .C(_1731_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1742_));
 sky130_fd_sc_hd__o311a_2 _2017_ (.A1(_1723_),
    .A2(_1724_),
    .A3(net39),
    .B1(_1741_),
    .C1(_1717_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0004_));
 sky130_fd_sc_hd__nor3b_2 _2018_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .B(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .C_N(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1743_));
 sky130_fd_sc_hd__nand2_2 _2019_ (.A(tx_pending_ext),
    .B(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1744_));
 sky130_fd_sc_hd__nor2_2 _2020_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .B(_1744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1745_));
 sky130_fd_sc_hd__or2_2 _2021_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .B(_1744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1746_));
 sky130_fd_sc_hd__nor2_2 _2022_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .B(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1747_));
 sky130_fd_sc_hd__a221o_2 _2023_ (.A1(\u_eml_serial_gate.op_a_reg[0] ),
    .A2(net128),
    .B1(_1747_),
    .B2(\u_eml_serial_gate.op_a_reg[8] ),
    .C1(_1746_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1748_));
 sky130_fd_sc_hd__and3b_2 _2024_ (.A_N(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .B(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .C(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1749_));
 sky130_fd_sc_hd__inv_2 _2025_ (.A(_1749_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1750_));
 sky130_fd_sc_hd__nor3b_2 _2026_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .B(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .C_N(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1751_));
 sky130_fd_sc_hd__a22o_2 _2027_ (.A1(\u_eml_serial_gate.op_b_reg[0] ),
    .A2(_1749_),
    .B1(_1751_),
    .B2(\u_eml_serial_gate.op_b_reg[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1752_));
 sky130_fd_sc_hd__nor2_2 _2028_ (.A(\u_eml_serial_gate.tx_bit_count_reg[4] ),
    .B(\u_eml_serial_gate.tx_bit_count_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1753_));
 sky130_fd_sc_hd__or4b_2 _2029_ (.A(\u_eml_serial_gate.tx_bit_count_reg[1] ),
    .B(\u_eml_serial_gate.tx_bit_count_reg[2] ),
    .C(\u_eml_serial_gate.tx_bit_count_reg[3] ),
    .D_N(_1753_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1754_));
 sky130_fd_sc_hd__or2_2 _2030_ (.A(\u_eml_serial_gate.tx_bit_count_reg[0] ),
    .B(_1754_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1755_));
 sky130_fd_sc_hd__and3_2 _2031_ (.A(tx_pending_ext),
    .B(net3),
    .C(_1755_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1756_));
 sky130_fd_sc_hd__inv_2 _2032_ (.A(_1756_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1757_));
 sky130_fd_sc_hd__o221a_2 _2033_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[0] ),
    .A2(_1745_),
    .B1(_1748_),
    .B2(_1752_),
    .C1(_1757_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1758_));
 sky130_fd_sc_hd__mux2_1 _2034_ (.A0(\u_eml_serial_gate.gate_result[11] ),
    .A1(_1758_),
    .S(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0046_));
 sky130_fd_sc_hd__nor2_2 _2035_ (.A(_1745_),
    .B(_1756_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1759_));
 sky130_fd_sc_hd__inv_2 _2036_ (.A(_1759_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1760_));
 sky130_fd_sc_hd__nor2_2 _2037_ (.A(_1746_),
    .B(_1755_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1761_));
 sky130_fd_sc_hd__inv_2 _2038_ (.A(_1761_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1762_));
 sky130_fd_sc_hd__a22o_2 _2039_ (.A1(\u_eml_serial_gate.op_a_reg[9] ),
    .A2(_1747_),
    .B1(_1749_),
    .B2(\u_eml_serial_gate.op_b_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1763_));
 sky130_fd_sc_hd__a22o_2 _2040_ (.A1(\u_eml_serial_gate.op_a_reg[1] ),
    .A2(_1743_),
    .B1(_1751_),
    .B2(\u_eml_serial_gate.op_b_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1764_));
 sky130_fd_sc_hd__o31a_2 _2041_ (.A1(_1762_),
    .A2(_1763_),
    .A3(_1764_),
    .B1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1765_));
 sky130_fd_sc_hd__o221a_2 _2042_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[0] ),
    .A2(_1757_),
    .B1(_1760_),
    .B2(\u_eml_serial_gate.tx_byte_shift_reg[1] ),
    .C1(_1765_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1766_));
 sky130_fd_sc_hd__a21o_2 _2043_ (.A1(\u_eml_serial_gate.gate_result[12] ),
    .A2(net66),
    .B1(_1766_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0047_));
 sky130_fd_sc_hd__a22o_2 _2044_ (.A1(\u_eml_serial_gate.op_b_reg[2] ),
    .A2(_1749_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1767_));
 sky130_fd_sc_hd__a22o_2 _2045_ (.A1(\u_eml_serial_gate.op_a_reg[2] ),
    .A2(net128),
    .B1(_1747_),
    .B2(\u_eml_serial_gate.op_a_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1768_));
 sky130_fd_sc_hd__o21a_2 _2046_ (.A1(_1767_),
    .A2(_1768_),
    .B1(_1761_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1769_));
 sky130_fd_sc_hd__a221o_2 _2047_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[1] ),
    .A2(_1756_),
    .B1(_1759_),
    .B2(\u_eml_serial_gate.tx_byte_shift_reg[2] ),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1770_));
 sky130_fd_sc_hd__o22a_2 _2048_ (.A1(\u_eml_serial_gate.gate_result[13] ),
    .A2(net107),
    .B1(_1769_),
    .B2(_1770_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0048_));
 sky130_fd_sc_hd__a22o_2 _2049_ (.A1(\u_eml_serial_gate.op_a_reg[3] ),
    .A2(net128),
    .B1(_1747_),
    .B2(\u_eml_serial_gate.op_a_reg[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1771_));
 sky130_fd_sc_hd__a22o_2 _2050_ (.A1(\u_eml_serial_gate.op_b_reg[3] ),
    .A2(_1749_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1772_));
 sky130_fd_sc_hd__or2_2 _2051_ (.A(_1771_),
    .B(_1772_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1773_));
 sky130_fd_sc_hd__a22o_2 _2052_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[2] ),
    .A2(_1756_),
    .B1(_1761_),
    .B2(_1773_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1774_));
 sky130_fd_sc_hd__a211o_2 _2053_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[3] ),
    .A2(_1759_),
    .B1(_1774_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1775_));
 sky130_fd_sc_hd__o21a_2 _2054_ (.A1(\u_eml_serial_gate.gate_result[14] ),
    .A2(net107),
    .B1(_1775_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0049_));
 sky130_fd_sc_hd__a22o_2 _2055_ (.A1(\u_eml_serial_gate.op_a_reg[12] ),
    .A2(_1747_),
    .B1(_1749_),
    .B2(\u_eml_serial_gate.op_b_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1776_));
 sky130_fd_sc_hd__a22o_2 _2056_ (.A1(\u_eml_serial_gate.op_a_reg[4] ),
    .A2(_1743_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1777_));
 sky130_fd_sc_hd__or2_2 _2057_ (.A(_1776_),
    .B(_1777_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1778_));
 sky130_fd_sc_hd__a22o_2 _2058_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[3] ),
    .A2(_1756_),
    .B1(_1761_),
    .B2(_1778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1779_));
 sky130_fd_sc_hd__a211o_2 _2059_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[4] ),
    .A2(_1759_),
    .B1(_1779_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1780_));
 sky130_fd_sc_hd__o21a_2 _2060_ (.A1(net139),
    .A2(net106),
    .B1(_1780_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0050_));
 sky130_fd_sc_hd__a22o_2 _2061_ (.A1(\u_eml_serial_gate.op_a_reg[13] ),
    .A2(_1747_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1781_));
 sky130_fd_sc_hd__a22o_2 _2062_ (.A1(\u_eml_serial_gate.op_a_reg[5] ),
    .A2(net128),
    .B1(_1749_),
    .B2(\u_eml_serial_gate.op_b_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1782_));
 sky130_fd_sc_hd__or2_2 _2063_ (.A(_1781_),
    .B(_1782_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1783_));
 sky130_fd_sc_hd__a22o_2 _2064_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[4] ),
    .A2(_1756_),
    .B1(_1761_),
    .B2(_1783_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1784_));
 sky130_fd_sc_hd__a211o_2 _2065_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[5] ),
    .A2(_1759_),
    .B1(_1784_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1785_));
 sky130_fd_sc_hd__o21a_2 _2066_ (.A1(\u_eml_serial_gate.gate_overflow ),
    .A2(net106),
    .B1(_1785_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0051_));
 sky130_fd_sc_hd__a22o_2 _2067_ (.A1(\u_eml_serial_gate.op_a_reg[6] ),
    .A2(net128),
    .B1(_1747_),
    .B2(\u_eml_serial_gate.op_a_reg[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1786_));
 sky130_fd_sc_hd__a22o_2 _2068_ (.A1(\u_eml_serial_gate.op_b_reg[6] ),
    .A2(_1749_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1787_));
 sky130_fd_sc_hd__or2_2 _2069_ (.A(_1786_),
    .B(_1787_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1788_));
 sky130_fd_sc_hd__a22o_2 _2070_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[5] ),
    .A2(_1756_),
    .B1(_1761_),
    .B2(_1788_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1789_));
 sky130_fd_sc_hd__a211o_2 _2071_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[6] ),
    .A2(_1759_),
    .B1(_1789_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1790_));
 sky130_fd_sc_hd__o21a_2 _2072_ (.A1(\u_eml_serial_gate.gate_domain_error ),
    .A2(net106),
    .B1(_1790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0052_));
 sky130_fd_sc_hd__a22o_2 _2073_ (.A1(\u_eml_serial_gate.op_a_reg[7] ),
    .A2(net128),
    .B1(_1747_),
    .B2(\u_eml_serial_gate.op_a_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1791_));
 sky130_fd_sc_hd__a22o_2 _2074_ (.A1(\u_eml_serial_gate.op_b_reg[7] ),
    .A2(_1749_),
    .B1(net127),
    .B2(\u_eml_serial_gate.op_b_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1792_));
 sky130_fd_sc_hd__or2_2 _2075_ (.A(_1791_),
    .B(_1792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1793_));
 sky130_fd_sc_hd__a221o_2 _2076_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[6] ),
    .A2(_1756_),
    .B1(_1761_),
    .B2(_1793_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1794_));
 sky130_fd_sc_hd__a21o_2 _2077_ (.A1(\u_eml_serial_gate.tx_byte_shift_reg[7] ),
    .A2(_1759_),
    .B1(_1794_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1795_));
 sky130_fd_sc_hd__o31a_2 _2078_ (.A1(error_ext),
    .A2(\u_eml_serial_gate.gate_error ),
    .A3(net106),
    .B1(_1795_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0053_));
 sky130_fd_sc_hd__nand2_2 _2079_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .B(_1747_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1796_));
 sky130_fd_sc_hd__nor2_2 _2080_ (.A(_1754_),
    .B(_1796_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1797_));
 sky130_fd_sc_hd__or3_2 _2081_ (.A(\u_eml_serial_gate.tx_bit_count_reg[0] ),
    .B(_1744_),
    .C(_1797_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1798_));
 sky130_fd_sc_hd__inv_2 _2082_ (.A(_1798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1799_));
 sky130_fd_sc_hd__a211o_2 _2083_ (.A1(\u_eml_serial_gate.tx_bit_count_reg[0] ),
    .A2(_1744_),
    .B1(_1799_),
    .C1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0037_));
 sky130_fd_sc_hd__or2_2 _2084_ (.A(\u_eml_serial_gate.tx_bit_count_reg[0] ),
    .B(\u_eml_serial_gate.tx_bit_count_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1800_));
 sky130_fd_sc_hd__nor2_2 _2085_ (.A(\u_eml_serial_gate.tx_bit_count_reg[1] ),
    .B(_1798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1801_));
 sky130_fd_sc_hd__a21o_2 _2086_ (.A1(\u_eml_serial_gate.tx_bit_count_reg[1] ),
    .A2(_1798_),
    .B1(net66),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1802_));
 sky130_fd_sc_hd__or2_2 _2087_ (.A(_1801_),
    .B(_1802_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0038_));
 sky130_fd_sc_hd__o22a_2 _2088_ (.A1(_1750_),
    .A2(_1755_),
    .B1(_1800_),
    .B2(_1706_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1803_));
 sky130_fd_sc_hd__o22a_2 _2089_ (.A1(\u_eml_serial_gate.tx_bit_count_reg[2] ),
    .A2(_1801_),
    .B1(_1803_),
    .B2(_1744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1804_));
 sky130_fd_sc_hd__or2_2 _2090_ (.A(net66),
    .B(_1804_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0039_));
 sky130_fd_sc_hd__or4_2 _2091_ (.A(\u_eml_serial_gate.tx_bit_count_reg[2] ),
    .B(\u_eml_serial_gate.tx_bit_count_reg[3] ),
    .C(_1744_),
    .D(_1800_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1805_));
 sky130_fd_sc_hd__nor2_2 _2092_ (.A(_1753_),
    .B(_1805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1806_));
 sky130_fd_sc_hd__o31a_2 _2093_ (.A1(\u_eml_serial_gate.tx_bit_count_reg[2] ),
    .A2(_1744_),
    .A3(_1800_),
    .B1(\u_eml_serial_gate.tx_bit_count_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1807_));
 sky130_fd_sc_hd__o21a_2 _2094_ (.A1(_1806_),
    .A2(_1807_),
    .B1(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0040_));
 sky130_fd_sc_hd__or2_2 _2095_ (.A(\u_eml_serial_gate.tx_bit_count_reg[4] ),
    .B(_1805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1808_));
 sky130_fd_sc_hd__inv_2 _2096_ (.A(_1808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1809_));
 sky130_fd_sc_hd__and3_2 _2097_ (.A(\u_eml_serial_gate.tx_bit_count_reg[4] ),
    .B(net107),
    .C(_1805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1810_));
 sky130_fd_sc_hd__a31o_2 _2098_ (.A1(\u_eml_serial_gate.tx_bit_count_reg[5] ),
    .A2(net107),
    .A3(_1809_),
    .B1(_1810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0041_));
 sky130_fd_sc_hd__and3_2 _2099_ (.A(\u_eml_serial_gate.tx_bit_count_reg[5] ),
    .B(net108),
    .C(_1808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0042_));
 sky130_fd_sc_hd__nor2_2 _2100_ (.A(\u_eml_serial_gate.tx_bit_count_reg[5] ),
    .B(_1808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1811_));
 sky130_fd_sc_hd__o21ai_2 _2101_ (.A1(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .A2(_1811_),
    .B1(_1796_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1812_));
 sky130_fd_sc_hd__a211oi_2 _2102_ (.A1(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .A2(_1811_),
    .B1(_1812_),
    .C1(_0002_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0043_));
 sky130_fd_sc_hd__a21o_2 _2103_ (.A1(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .A2(_1811_),
    .B1(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1813_));
 sky130_fd_sc_hd__nand3_2 _2104_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[1] ),
    .B(\u_eml_serial_gate.tx_byte_idx_reg[0] ),
    .C(_1811_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1814_));
 sky130_fd_sc_hd__and3_2 _2105_ (.A(net108),
    .B(_1813_),
    .C(_1814_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0044_));
 sky130_fd_sc_hd__xor2_2 _2106_ (.A(\u_eml_serial_gate.tx_byte_idx_reg[2] ),
    .B(_1814_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1815_));
 sky130_fd_sc_hd__nor2_2 _2107_ (.A(_0002_),
    .B(_1815_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0045_));
 sky130_fd_sc_hd__nand2_2 _2108_ (.A(net3),
    .B(_1797_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1816_));
 sky130_fd_sc_hd__a21o_2 _2109_ (.A1(tx_pending_ext),
    .A2(_1816_),
    .B1(_0002_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0054_));
 sky130_fd_sc_hd__or2_2 _2110_ (.A(rx_full_ext),
    .B(_1722_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1817_));
 sky130_fd_sc_hd__or2_2 _2111_ (.A(net39),
    .B(_1817_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1818_));
 sky130_fd_sc_hd__nor2_2 _2112_ (.A(_1740_),
    .B(_1818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1819_));
 sky130_fd_sc_hd__or2_2 _2113_ (.A(_1740_),
    .B(_1818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1820_));
 sky130_fd_sc_hd__or2_2 _2114_ (.A(\u_eml_serial_gate.op_b_reg[0] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1821_));
 sky130_fd_sc_hd__o211a_2 _2115_ (.A1(net2),
    .A2(_1820_),
    .B1(_1821_),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0021_));
 sky130_fd_sc_hd__or2_2 _2116_ (.A(\u_eml_serial_gate.op_b_reg[1] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1822_));
 sky130_fd_sc_hd__o211a_2 _2117_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .A2(_1820_),
    .B1(_1822_),
    .C1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0028_));
 sky130_fd_sc_hd__or2_2 _2118_ (.A(\u_eml_serial_gate.op_b_reg[2] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1823_));
 sky130_fd_sc_hd__o211a_2 _2119_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .A2(_1820_),
    .B1(_1823_),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0029_));
 sky130_fd_sc_hd__or2_2 _2120_ (.A(\u_eml_serial_gate.op_b_reg[3] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1824_));
 sky130_fd_sc_hd__o211a_2 _2121_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .A2(_1820_),
    .B1(_1824_),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0030_));
 sky130_fd_sc_hd__or2_2 _2122_ (.A(\u_eml_serial_gate.op_b_reg[4] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1825_));
 sky130_fd_sc_hd__o211a_2 _2123_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .A2(_1820_),
    .B1(_1825_),
    .C1(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0031_));
 sky130_fd_sc_hd__or2_2 _2124_ (.A(\u_eml_serial_gate.op_b_reg[5] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1826_));
 sky130_fd_sc_hd__o211a_2 _2125_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .A2(_1820_),
    .B1(_1826_),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0032_));
 sky130_fd_sc_hd__or2_2 _2126_ (.A(\u_eml_serial_gate.op_b_reg[6] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1827_));
 sky130_fd_sc_hd__o211a_2 _2127_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .A2(_1820_),
    .B1(_1827_),
    .C1(net103),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0033_));
 sky130_fd_sc_hd__or2_2 _2128_ (.A(\u_eml_serial_gate.op_b_reg[7] ),
    .B(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1828_));
 sky130_fd_sc_hd__o211a_2 _2129_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .A2(_1820_),
    .B1(_1828_),
    .C1(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0034_));
 sky130_fd_sc_hd__or3_2 _2130_ (.A(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .B(\u_eml_serial_gate.rx_byte_count_reg[1] ),
    .C(_1738_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1829_));
 sky130_fd_sc_hd__or2_2 _2131_ (.A(_1818_),
    .B(_1829_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1830_));
 sky130_fd_sc_hd__inv_2 _2132_ (.A(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1831_));
 sky130_fd_sc_hd__mux2_1 _2133_ (.A0(net2),
    .A1(\u_eml_serial_gate.op_a_reg[8] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1832_));
 sky130_fd_sc_hd__mux2_1 _2134_ (.A0(\u_eml_serial_gate.gate_result[3] ),
    .A1(_1832_),
    .S(net104),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0019_));
 sky130_fd_sc_hd__or4b_2 _2135_ (.A(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .B(_1727_),
    .C(_1829_),
    .D_N(net3),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1833_));
 sky130_fd_sc_hd__or3b_2 _2136_ (.A(_1817_),
    .B(_1833_),
    .C_N(_1744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1834_));
 sky130_fd_sc_hd__a22o_2 _2137_ (.A1(_1831_),
    .A2(_1833_),
    .B1(_1834_),
    .B2(\u_eml_serial_gate.op_a_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1835_));
 sky130_fd_sc_hd__mux2_1 _2138_ (.A0(\u_eml_serial_gate.gate_result[4] ),
    .A1(_1835_),
    .S(net104),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_1 _2139_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .A1(\u_eml_serial_gate.op_a_reg[10] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1836_));
 sky130_fd_sc_hd__mux2_1 _2140_ (.A0(\u_eml_serial_gate.gate_result[5] ),
    .A1(_1836_),
    .S(net104),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _2141_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .A1(\u_eml_serial_gate.op_a_reg[11] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1837_));
 sky130_fd_sc_hd__mux2_1 _2142_ (.A0(\u_eml_serial_gate.gate_result[6] ),
    .A1(_1837_),
    .S(net104),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0007_));
 sky130_fd_sc_hd__mux2_1 _2143_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .A1(\u_eml_serial_gate.op_a_reg[12] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1838_));
 sky130_fd_sc_hd__mux2_1 _2144_ (.A0(\u_eml_serial_gate.gate_result[7] ),
    .A1(_1838_),
    .S(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0008_));
 sky130_fd_sc_hd__mux2_1 _2145_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .A1(\u_eml_serial_gate.op_a_reg[13] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1839_));
 sky130_fd_sc_hd__mux2_1 _2146_ (.A0(\u_eml_serial_gate.gate_result[8] ),
    .A1(_1839_),
    .S(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0009_));
 sky130_fd_sc_hd__mux2_1 _2147_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .A1(\u_eml_serial_gate.op_a_reg[14] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1840_));
 sky130_fd_sc_hd__mux2_1 _2148_ (.A0(\u_eml_serial_gate.gate_result[9] ),
    .A1(_1840_),
    .S(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0010_));
 sky130_fd_sc_hd__mux2_1 _2149_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .A1(\u_eml_serial_gate.op_a_reg[15] ),
    .S(_1830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1841_));
 sky130_fd_sc_hd__mux2_1 _2150_ (.A0(\u_eml_serial_gate.gate_result[10] ),
    .A1(_1841_),
    .S(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0011_));
 sky130_fd_sc_hd__nor4_2 _2151_ (.A(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .B(_1705_),
    .C(_1738_),
    .D(_1818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1842_));
 sky130_fd_sc_hd__or4_2 _2152_ (.A(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .B(_1705_),
    .C(_1738_),
    .D(_1818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1843_));
 sky130_fd_sc_hd__or2_2 _2153_ (.A(\u_eml_serial_gate.op_b_reg[8] ),
    .B(_1842_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1844_));
 sky130_fd_sc_hd__o211a_2 _2154_ (.A1(net2),
    .A2(_1843_),
    .B1(_1844_),
    .C1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0035_));
 sky130_fd_sc_hd__or2_2 _2155_ (.A(\u_eml_serial_gate.op_b_reg[9] ),
    .B(_1842_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1845_));
 sky130_fd_sc_hd__o211a_2 _2156_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .A2(_1843_),
    .B1(_1845_),
    .C1(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0036_));
 sky130_fd_sc_hd__or2_2 _2157_ (.A(\u_eml_serial_gate.op_b_reg[10] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1846_));
 sky130_fd_sc_hd__o211a_2 _2158_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .A2(_1843_),
    .B1(_1846_),
    .C1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0022_));
 sky130_fd_sc_hd__or2_2 _2159_ (.A(\u_eml_serial_gate.op_b_reg[11] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1847_));
 sky130_fd_sc_hd__o211a_2 _2160_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .A2(_1843_),
    .B1(_1847_),
    .C1(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0023_));
 sky130_fd_sc_hd__or2_2 _2161_ (.A(\u_eml_serial_gate.op_b_reg[12] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1848_));
 sky130_fd_sc_hd__o211a_2 _2162_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .A2(_1843_),
    .B1(_1848_),
    .C1(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0024_));
 sky130_fd_sc_hd__or2_2 _2163_ (.A(\u_eml_serial_gate.op_b_reg[13] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1849_));
 sky130_fd_sc_hd__o211a_2 _2164_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .A2(_1843_),
    .B1(_1849_),
    .C1(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0025_));
 sky130_fd_sc_hd__or2_2 _2165_ (.A(\u_eml_serial_gate.op_b_reg[14] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1850_));
 sky130_fd_sc_hd__o211a_2 _2166_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .A2(_1843_),
    .B1(_1850_),
    .C1(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0026_));
 sky130_fd_sc_hd__or2_2 _2167_ (.A(\u_eml_serial_gate.op_b_reg[15] ),
    .B(net24),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1851_));
 sky130_fd_sc_hd__o211a_2 _2168_ (.A1(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .A2(_1843_),
    .B1(_1851_),
    .C1(net106),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0027_));
 sky130_fd_sc_hd__or4_2 _2169_ (.A(\u_eml_serial_gate.gate_y_reg[9] ),
    .B(\u_eml_serial_gate.gate_y_reg[8] ),
    .C(\u_eml_serial_gate.gate_y_reg[11] ),
    .D(\u_eml_serial_gate.gate_y_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1852_));
 sky130_fd_sc_hd__or4_2 _2170_ (.A(\u_eml_serial_gate.gate_y_reg[13] ),
    .B(\u_eml_serial_gate.gate_y_reg[12] ),
    .C(\u_eml_serial_gate.gate_y_reg[14] ),
    .D(_1852_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1853_));
 sky130_fd_sc_hd__or4_2 _2171_ (.A(\u_eml_serial_gate.gate_y_reg[1] ),
    .B(\u_eml_serial_gate.gate_y_reg[0] ),
    .C(\u_eml_serial_gate.gate_y_reg[3] ),
    .D(\u_eml_serial_gate.gate_y_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1854_));
 sky130_fd_sc_hd__or4_2 _2172_ (.A(\u_eml_serial_gate.gate_y_reg[5] ),
    .B(\u_eml_serial_gate.gate_y_reg[4] ),
    .C(\u_eml_serial_gate.gate_y_reg[7] ),
    .D(\u_eml_serial_gate.gate_y_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1855_));
 sky130_fd_sc_hd__o31ai_2 _2173_ (.A1(_1853_),
    .A2(_1854_),
    .A3(_1855_),
    .B1(_1681_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1856_));
 sky130_fd_sc_hd__or3b_2 _2174_ (.A(_1718_),
    .B(\u_eml_serial_gate.u_eml_gate_top.state[3] ),
    .C_N(\u_eml_serial_gate.gate_start_reg ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1857_));
 sky130_fd_sc_hd__nor2_2 _2175_ (.A(\u_eml_serial_gate.gate_func_reg[0] ),
    .B(_1857_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1858_));
 sky130_fd_sc_hd__or2_2 _2176_ (.A(\u_eml_serial_gate.gate_func_reg[0] ),
    .B(_1856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1859_));
 sky130_fd_sc_hd__nand2b_2 _2177_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1860_));
 sky130_fd_sc_hd__or2_2 _2178_ (.A(_1708_),
    .B(_1710_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1861_));
 sky130_fd_sc_hd__inv_2 _2179_ (.A(_1861_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1862_));
 sky130_fd_sc_hd__nor4_2 _2180_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .B(net141),
    .C(net142),
    .D(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1863_));
 sky130_fd_sc_hd__or4_2 _2181_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .B(net141),
    .C(net142),
    .D(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1864_));
 sky130_fd_sc_hd__nor2_2 _2182_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .B(_1864_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1865_));
 sky130_fd_sc_hd__or2_2 _2183_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .B(_1865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1866_));
 sky130_fd_sc_hd__or2_2 _2184_ (.A(_1864_),
    .B(_1866_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1867_));
 sky130_fd_sc_hd__nor2_2 _2185_ (.A(_1861_),
    .B(_1867_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1868_));
 sky130_fd_sc_hd__o22a_2 _2186_ (.A1(_1709_),
    .A2(_1860_),
    .B1(_1861_),
    .B2(_1867_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1869_));
 sky130_fd_sc_hd__o21a_2 _2187_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .A2(_1863_),
    .B1(_1862_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1870_));
 sky130_fd_sc_hd__o21ai_2 _2188_ (.A1(_1857_),
    .A2(_1859_),
    .B1(_1869_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0335_));
 sky130_fd_sc_hd__nor3b_2 _2189_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ),
    .C_N(\u_eml_serial_gate.u_eml_gate_top.cordic_start_r ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1871_));
 sky130_fd_sc_hd__and2b_2 _2190_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1872_));
 sky130_fd_sc_hd__nand2b_2 _2191_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1873_));
 sky130_fd_sc_hd__nor2_2 _2192_ (.A(_1684_),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1874_));
 sky130_fd_sc_hd__nand2_2 _2193_ (.A(net134),
    .B(_1685_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1875_));
 sky130_fd_sc_hd__nand3b_2 _2194_ (.A_N(net137),
    .B(net134),
    .C(net138),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1876_));
 sky130_fd_sc_hd__nor2_2 _2195_ (.A(net122),
    .B(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1877_));
 sky130_fd_sc_hd__or2_2 _2196_ (.A(net122),
    .B(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1878_));
 sky130_fd_sc_hd__o31ai_2 _2197_ (.A1(_1683_),
    .A2(net122),
    .A3(net113),
    .B1(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1879_));
 sky130_fd_sc_hd__inv_2 _2198_ (.A(_1879_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0056_));
 sky130_fd_sc_hd__nor3_2 _2199_ (.A(_1683_),
    .B(net114),
    .C(net113),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0057_));
 sky130_fd_sc_hd__and3b_2 _2200_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .B(_1674_),
    .C(\u_eml_serial_gate.u_eml_gate_top.mul_start_r ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1880_));
 sky130_fd_sc_hd__or3_2 _2201_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[0] ),
    .C(_1675_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1881_));
 sky130_fd_sc_hd__nand2_2 _2202_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1882_));
 sky130_fd_sc_hd__and4_2 _2203_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[2] ),
    .D(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1883_));
 sky130_fd_sc_hd__nor2_2 _2204_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .B(_1674_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1884_));
 sky130_fd_sc_hd__and2b_2 _2205_ (.A_N(net112),
    .B(_1884_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1885_));
 sky130_fd_sc_hd__or3_2 _2206_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .B(_1674_),
    .C(net110),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1886_));
 sky130_fd_sc_hd__nor2_2 _2207_ (.A(net92),
    .B(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1887_));
 sky130_fd_sc_hd__inv_2 _2208_ (.A(net46),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0058_));
 sky130_fd_sc_hd__and3_2 _2209_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ),
    .C(_1884_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1888_));
 sky130_fd_sc_hd__and2_2 _2210_ (.A(net110),
    .B(_1884_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0059_));
 sky130_fd_sc_hd__nor3_4 _2211_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .C(_1709_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1889_));
 sky130_fd_sc_hd__or3_2 _2212_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .C(_1709_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1890_));
 sky130_fd_sc_hd__nand2_2 _2213_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1891_));
 sky130_fd_sc_hd__or2_2 _2214_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1892_));
 sky130_fd_sc_hd__nand2_2 _2215_ (.A(_1891_),
    .B(_1892_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1893_));
 sky130_fd_sc_hd__nand2_2 _2216_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1894_));
 sky130_fd_sc_hd__or2_2 _2217_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1895_));
 sky130_fd_sc_hd__nand2_2 _2218_ (.A(_1894_),
    .B(_1895_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1896_));
 sky130_fd_sc_hd__nand2_2 _2219_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1897_));
 sky130_fd_sc_hd__or2_2 _2220_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1898_));
 sky130_fd_sc_hd__nand2_2 _2221_ (.A(net140),
    .B(\u_eml_serial_gate.gate_result[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1899_));
 sky130_fd_sc_hd__nand2_2 _2222_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1900_));
 sky130_fd_sc_hd__or2_2 _2223_ (.A(net139),
    .B(\u_eml_serial_gate.gate_result[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1901_));
 sky130_fd_sc_hd__and3_2 _2224_ (.A(\u_eml_serial_gate.gate_result[9] ),
    .B(_1900_),
    .C(_1901_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1902_));
 sky130_fd_sc_hd__a21o_2 _2225_ (.A1(net139),
    .A2(\u_eml_serial_gate.gate_result[10] ),
    .B1(_1902_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1903_));
 sky130_fd_sc_hd__or2_2 _2226_ (.A(net140),
    .B(\u_eml_serial_gate.gate_result[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1904_));
 sky130_fd_sc_hd__and3_2 _2227_ (.A(_1899_),
    .B(_1903_),
    .C(_1904_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1905_));
 sky130_fd_sc_hd__a21oi_2 _2228_ (.A1(net140),
    .A2(\u_eml_serial_gate.gate_result[11] ),
    .B1(_1905_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1906_));
 sky130_fd_sc_hd__a21bo_2 _2229_ (.A1(_1897_),
    .A2(_1906_),
    .B1_N(_1898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1907_));
 sky130_fd_sc_hd__or2_2 _2230_ (.A(_1896_),
    .B(_1907_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1908_));
 sky130_fd_sc_hd__o211ai_2 _2231_ (.A1(_1893_),
    .A2(_1908_),
    .B1(_1894_),
    .C1(_1891_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1909_));
 sky130_fd_sc_hd__nand2b_2 _2232_ (.A_N(_1719_),
    .B(_1859_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1910_));
 sky130_fd_sc_hd__nand2_2 _2233_ (.A(net188),
    .B(_1910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1911_));
 sky130_fd_sc_hd__and2b_2 _2234_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1912_));
 sky130_fd_sc_hd__nor2_2 _2235_ (.A(_1890_),
    .B(_1912_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1913_));
 sky130_fd_sc_hd__or4_2 _2236_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .B(net144),
    .C(_1676_),
    .D(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1914_));
 sky130_fd_sc_hd__or2_2 _2237_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1915_));
 sky130_fd_sc_hd__or2_2 _2238_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .B(_1915_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1916_));
 sky130_fd_sc_hd__or2_2 _2239_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .B(_1916_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1917_));
 sky130_fd_sc_hd__nor2_2 _2240_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .B(_1917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1918_));
 sky130_fd_sc_hd__or2_2 _2241_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .B(_1917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1919_));
 sky130_fd_sc_hd__or3_2 _2242_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .B(_1914_),
    .C(_1919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1920_));
 sky130_fd_sc_hd__nor2_2 _2243_ (.A(\u_eml_serial_gate.gate_start_reg ),
    .B(_1719_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1921_));
 sky130_fd_sc_hd__nor2_2 _2244_ (.A(_1862_),
    .B(net58),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1922_));
 sky130_fd_sc_hd__a211o_2 _2245_ (.A1(_1718_),
    .A2(net45),
    .B1(_1913_),
    .C1(_1868_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1923_));
 sky130_fd_sc_hd__or4b_2 _2246_ (.A(_1911_),
    .B(_1923_),
    .C(_1921_),
    .D_N(_1920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1924_));
 sky130_fd_sc_hd__or2_2 _2247_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .B(_1918_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1925_));
 sky130_fd_sc_hd__and2b_2 _2248_ (.A_N(_1914_),
    .B(_1925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1926_));
 sky130_fd_sc_hd__nor3_2 _2249_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .B(_1861_),
    .C(_1863_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1927_));
 sky130_fd_sc_hd__or2_2 _2250_ (.A(net28),
    .B(net56),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1928_));
 sky130_fd_sc_hd__nand2_2 _2251_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1929_));
 sky130_fd_sc_hd__and4_2 _2252_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .D(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1930_));
 sky130_fd_sc_hd__inv_2 _2253_ (.A(_1930_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0336_));
 sky130_fd_sc_hd__nand2_2 _2254_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .B(_1930_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0337_));
 sky130_fd_sc_hd__xnor2_2 _2255_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .B(_0337_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0338_));
 sky130_fd_sc_hd__nand2_2 _2256_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .B(_1918_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0339_));
 sky130_fd_sc_hd__a32o_2 _2257_ (.A1(net48),
    .A2(_1925_),
    .A3(_0339_),
    .B1(_0338_),
    .B2(_1928_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0340_));
 sky130_fd_sc_hd__a21o_2 _2258_ (.A1(_1889_),
    .A2(_1909_),
    .B1(_0340_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0341_));
 sky130_fd_sc_hd__mux2_1 _2259_ (.A0(_0341_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0060_));
 sky130_fd_sc_hd__a21oi_2 _2260_ (.A1(_1894_),
    .A2(_1908_),
    .B1(_1893_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0342_));
 sky130_fd_sc_hd__a31o_2 _2261_ (.A1(_1893_),
    .A2(_1894_),
    .A3(_1908_),
    .B1(_1890_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0343_));
 sky130_fd_sc_hd__nor2_2 _2262_ (.A(_0342_),
    .B(_0343_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0344_));
 sky130_fd_sc_hd__nand2_2 _2263_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .B(_1917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0345_));
 sky130_fd_sc_hd__nor2_2 _2264_ (.A(_1914_),
    .B(_1925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0346_));
 sky130_fd_sc_hd__nor2_2 _2265_ (.A(net48),
    .B(_0346_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0347_));
 sky130_fd_sc_hd__a21oi_2 _2266_ (.A1(_1919_),
    .A2(_0345_),
    .B1(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0348_));
 sky130_fd_sc_hd__or2_2 _2267_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .B(_1930_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0349_));
 sky130_fd_sc_hd__a311o_2 _2268_ (.A1(_1928_),
    .A2(_0337_),
    .A3(_0349_),
    .B1(_0348_),
    .C1(_0344_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0350_));
 sky130_fd_sc_hd__mux2_1 _2269_ (.A0(_0350_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0061_));
 sky130_fd_sc_hd__nand2_2 _2270_ (.A(_1896_),
    .B(_1907_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0351_));
 sky130_fd_sc_hd__nand2_2 _2271_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .B(_1916_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0352_));
 sky130_fd_sc_hd__a21oi_2 _2272_ (.A1(_1917_),
    .A2(_0352_),
    .B1(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0353_));
 sky130_fd_sc_hd__a31o_2 _2273_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .A3(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .B1(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0354_));
 sky130_fd_sc_hd__a31o_2 _2274_ (.A1(_1928_),
    .A2(_0336_),
    .A3(_0354_),
    .B1(_0353_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0355_));
 sky130_fd_sc_hd__a31o_2 _2275_ (.A1(_1889_),
    .A2(_1908_),
    .A3(_0351_),
    .B1(_0355_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0356_));
 sky130_fd_sc_hd__mux2_1 _2276_ (.A0(_0356_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0062_));
 sky130_fd_sc_hd__nand2_2 _2277_ (.A(_1897_),
    .B(_1898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0357_));
 sky130_fd_sc_hd__o21ai_2 _2278_ (.A1(_1906_),
    .A2(_0357_),
    .B1(_1889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0358_));
 sky130_fd_sc_hd__a21oi_2 _2279_ (.A1(_1906_),
    .A2(_0357_),
    .B1(_0358_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0359_));
 sky130_fd_sc_hd__xnor2_2 _2280_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .B(_1929_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0360_));
 sky130_fd_sc_hd__nand2_2 _2281_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .B(_1915_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0361_));
 sky130_fd_sc_hd__a21oi_2 _2282_ (.A1(_1916_),
    .A2(_0361_),
    .B1(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0362_));
 sky130_fd_sc_hd__a211o_2 _2283_ (.A1(_1928_),
    .A2(_0360_),
    .B1(_0362_),
    .C1(_0359_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0363_));
 sky130_fd_sc_hd__mux2_1 _2284_ (.A0(_0363_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0063_));
 sky130_fd_sc_hd__a21oi_2 _2285_ (.A1(_1915_),
    .A2(_1929_),
    .B1(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0364_));
 sky130_fd_sc_hd__a21o_2 _2286_ (.A1(_1899_),
    .A2(_1904_),
    .B1(_1903_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0365_));
 sky130_fd_sc_hd__and3b_2 _2287_ (.A_N(_1905_),
    .B(_0365_),
    .C(_1889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0366_));
 sky130_fd_sc_hd__a311o_2 _2288_ (.A1(_1915_),
    .A2(_1928_),
    .A3(_1929_),
    .B1(_0364_),
    .C1(_0366_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0367_));
 sky130_fd_sc_hd__mux2_1 _2289_ (.A0(_0367_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0064_));
 sky130_fd_sc_hd__a21o_2 _2290_ (.A1(_1861_),
    .A2(_1914_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0368_));
 sky130_fd_sc_hd__a21oi_2 _2291_ (.A1(_1900_),
    .A2(_1901_),
    .B1(\u_eml_serial_gate.gate_result[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0369_));
 sky130_fd_sc_hd__o31ai_2 _2292_ (.A1(_1890_),
    .A2(_1902_),
    .A3(_0369_),
    .B1(_0368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0370_));
 sky130_fd_sc_hd__mux2_1 _2293_ (.A0(_0370_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .S(_1924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0065_));
 sky130_fd_sc_hd__a21o_2 _2294_ (.A1(\u_eml_serial_gate.state_reg[0] ),
    .A2(net107),
    .B1(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0066_));
 sky130_fd_sc_hd__and2_2 _2295_ (.A(net184),
    .B(_0335_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0371_));
 sky130_fd_sc_hd__nand2_2 _2296_ (.A(net163),
    .B(_0335_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0372_));
 sky130_fd_sc_hd__o21ai_2 _2297_ (.A1(_1709_),
    .A2(_1860_),
    .B1(_1861_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0373_));
 sky130_fd_sc_hd__nand2_2 _2298_ (.A(_0371_),
    .B(_0373_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0374_));
 sky130_fd_sc_hd__nor2_2 _2299_ (.A(net23),
    .B(_0373_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0375_));
 sky130_fd_sc_hd__or2_2 _2300_ (.A(net23),
    .B(_0373_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0376_));
 sky130_fd_sc_hd__a21o_2 _2301_ (.A1(net265),
    .A2(net23),
    .B1(net17),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0067_));
 sky130_fd_sc_hd__o21a_2 _2302_ (.A1(net241),
    .A2(_0371_),
    .B1(net16),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0068_));
 sky130_fd_sc_hd__or2_2 _2303_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[10] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0377_));
 sky130_fd_sc_hd__o221a_2 _2304_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[10] ),
    .C1(_0377_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0069_));
 sky130_fd_sc_hd__or2_2 _2305_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[11] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0378_));
 sky130_fd_sc_hd__o221a_2 _2306_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[11] ),
    .C1(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0070_));
 sky130_fd_sc_hd__or2_2 _2307_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[12] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0379_));
 sky130_fd_sc_hd__o221a_2 _2308_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[12] ),
    .C1(_0379_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0071_));
 sky130_fd_sc_hd__or2_2 _2309_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[13] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0380_));
 sky130_fd_sc_hd__o221a_2 _2310_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[13] ),
    .C1(_0380_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0072_));
 sky130_fd_sc_hd__or2_2 _2311_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[14] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0381_));
 sky130_fd_sc_hd__o221a_2 _2312_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[14] ),
    .C1(_0381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0073_));
 sky130_fd_sc_hd__or2_2 _2313_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[15] ),
    .B(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0382_));
 sky130_fd_sc_hd__o221a_2 _2314_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .A2(_0374_),
    .B1(net16),
    .B2(\u_eml_serial_gate.gate_x_reg[15] ),
    .C1(_0382_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0074_));
 sky130_fd_sc_hd__a22o_2 _2315_ (.A1(net249),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0075_));
 sky130_fd_sc_hd__a22o_2 _2316_ (.A1(net236),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0076_));
 sky130_fd_sc_hd__a22o_2 _2317_ (.A1(net224),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0077_));
 sky130_fd_sc_hd__a22o_2 _2318_ (.A1(net256),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0078_));
 sky130_fd_sc_hd__a22o_2 _2319_ (.A1(net220),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0079_));
 sky130_fd_sc_hd__a22o_2 _2320_ (.A1(net245),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0080_));
 sky130_fd_sc_hd__a22o_2 _2321_ (.A1(net234),
    .A2(net23),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0081_));
 sky130_fd_sc_hd__a22o_2 _2322_ (.A1(net242),
    .A2(_0372_),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0082_));
 sky130_fd_sc_hd__a22o_2 _2323_ (.A1(net223),
    .A2(_0372_),
    .B1(net17),
    .B2(\u_eml_serial_gate.gate_x_reg[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0083_));
 sky130_fd_sc_hd__a22o_2 _2324_ (.A1(net235),
    .A2(_0372_),
    .B1(net18),
    .B2(\u_eml_serial_gate.gate_x_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0084_));
 sky130_fd_sc_hd__and2_2 _2325_ (.A(net169),
    .B(_0055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0383_));
 sky130_fd_sc_hd__nand2_2 _2326_ (.A(net174),
    .B(_0055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0384_));
 sky130_fd_sc_hd__nor2_2 _2327_ (.A(\u_eml_serial_gate.u_eml_gate_top.state[0] ),
    .B(net34),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0385_));
 sky130_fd_sc_hd__or4_2 _2328_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .D(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0386_));
 sky130_fd_sc_hd__or4_2 _2329_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .D(_0386_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0387_));
 sky130_fd_sc_hd__and4_2 _2330_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .D(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0388_));
 sky130_fd_sc_hd__nand4_2 _2331_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .D(_0388_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0389_));
 sky130_fd_sc_hd__and2_2 _2332_ (.A(_0387_),
    .B(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0390_));
 sky130_fd_sc_hd__nand3_2 _2333_ (.A(net132),
    .B(_0387_),
    .C(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0391_));
 sky130_fd_sc_hd__o21ai_2 _2334_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[10] ),
    .A2(net54),
    .B1(net52),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0392_));
 sky130_fd_sc_hd__inv_2 _2335_ (.A(_0392_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0393_));
 sky130_fd_sc_hd__xnor2_2 _2336_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[0] ),
    .B(_0392_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0394_));
 sky130_fd_sc_hd__a22o_2 _2337_ (.A1(net252),
    .A2(net33),
    .B1(net26),
    .B2(_0394_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0085_));
 sky130_fd_sc_hd__a21o_2 _2338_ (.A1(_0387_),
    .A2(_0389_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0395_));
 sky130_fd_sc_hd__and2_2 _2339_ (.A(net52),
    .B(_0395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0396_));
 sky130_fd_sc_hd__and2b_2 _2340_ (.A_N(_0396_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0397_));
 sky130_fd_sc_hd__a21bo_2 _2341_ (.A1(net52),
    .A2(_0395_),
    .B1_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0398_));
 sky130_fd_sc_hd__nand3b_2 _2342_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[1] ),
    .B(net52),
    .C(_0395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0399_));
 sky130_fd_sc_hd__and2_2 _2343_ (.A(_0398_),
    .B(_0399_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0400_));
 sky130_fd_sc_hd__o211a_2 _2344_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[0] ),
    .A2(_0392_),
    .B1(_0398_),
    .C1(_0399_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0401_));
 sky130_fd_sc_hd__o31ai_2 _2345_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[0] ),
    .A2(_0392_),
    .A3(_0400_),
    .B1(net27),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0402_));
 sky130_fd_sc_hd__a2bb2o_2 _2346_ (.A1_N(_0401_),
    .A2_N(_0402_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[1] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0086_));
 sky130_fd_sc_hd__a21o_2 _2347_ (.A1(_0387_),
    .A2(_0389_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0403_));
 sky130_fd_sc_hd__and2_2 _2348_ (.A(net52),
    .B(_0403_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0404_));
 sky130_fd_sc_hd__and2b_2 _2349_ (.A_N(_0404_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0405_));
 sky130_fd_sc_hd__xnor2_2 _2350_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[2] ),
    .B(_0404_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0406_));
 sky130_fd_sc_hd__o21a_2 _2351_ (.A1(_0397_),
    .A2(_0401_),
    .B1(_0406_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0407_));
 sky130_fd_sc_hd__o31ai_2 _2352_ (.A1(_0397_),
    .A2(_0401_),
    .A3(_0406_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0408_));
 sky130_fd_sc_hd__a2bb2o_2 _2353_ (.A1_N(_0407_),
    .A2_N(_0408_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[2] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0087_));
 sky130_fd_sc_hd__o21a_2 _2354_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[13] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0409_));
 sky130_fd_sc_hd__and2b_2 _2355_ (.A_N(_0409_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0410_));
 sky130_fd_sc_hd__and2b_2 _2356_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[3] ),
    .B(_0409_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0411_));
 sky130_fd_sc_hd__nor2_2 _2357_ (.A(_0410_),
    .B(_0411_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0412_));
 sky130_fd_sc_hd__o21a_2 _2358_ (.A1(_0405_),
    .A2(_0407_),
    .B1(_0412_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0413_));
 sky130_fd_sc_hd__o31ai_2 _2359_ (.A1(_0405_),
    .A2(_0407_),
    .A3(_0412_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0414_));
 sky130_fd_sc_hd__a2bb2o_2 _2360_ (.A1_N(_0413_),
    .A2_N(_0414_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[3] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0088_));
 sky130_fd_sc_hd__o21a_2 _2361_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[14] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0415_));
 sky130_fd_sc_hd__and2b_2 _2362_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[4] ),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0416_));
 sky130_fd_sc_hd__and2b_2 _2363_ (.A_N(_0415_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0417_));
 sky130_fd_sc_hd__nor2_2 _2364_ (.A(_0416_),
    .B(_0417_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0418_));
 sky130_fd_sc_hd__o21a_2 _2365_ (.A1(_0410_),
    .A2(_0413_),
    .B1(_0418_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0419_));
 sky130_fd_sc_hd__o31ai_2 _2366_ (.A1(_0410_),
    .A2(_0413_),
    .A3(_0418_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0420_));
 sky130_fd_sc_hd__a2bb2o_2 _2367_ (.A1_N(_0419_),
    .A2_N(_0420_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[4] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0089_));
 sky130_fd_sc_hd__o21a_2 _2368_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[15] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0421_));
 sky130_fd_sc_hd__and2b_2 _2369_ (.A_N(_0421_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0422_));
 sky130_fd_sc_hd__and2b_2 _2370_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[5] ),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0423_));
 sky130_fd_sc_hd__nor2_2 _2371_ (.A(_0422_),
    .B(_0423_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0424_));
 sky130_fd_sc_hd__o21a_2 _2372_ (.A1(_0417_),
    .A2(_0419_),
    .B1(_0424_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0425_));
 sky130_fd_sc_hd__o31ai_2 _2373_ (.A1(_0417_),
    .A2(_0419_),
    .A3(_0424_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0426_));
 sky130_fd_sc_hd__a2bb2o_2 _2374_ (.A1_N(_0425_),
    .A2_N(_0426_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[5] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0090_));
 sky130_fd_sc_hd__o21a_2 _2375_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0427_));
 sky130_fd_sc_hd__and2b_2 _2376_ (.A_N(_0427_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0428_));
 sky130_fd_sc_hd__xnor2_2 _2377_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[6] ),
    .B(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0429_));
 sky130_fd_sc_hd__o21a_2 _2378_ (.A1(_0422_),
    .A2(_0425_),
    .B1(_0429_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0430_));
 sky130_fd_sc_hd__o31ai_2 _2379_ (.A1(_0422_),
    .A2(_0425_),
    .A3(_0429_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0431_));
 sky130_fd_sc_hd__a2bb2o_2 _2380_ (.A1_N(_0430_),
    .A2_N(_0431_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[6] ),
    .B2(net33),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0091_));
 sky130_fd_sc_hd__o21a_2 _2381_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0432_));
 sky130_fd_sc_hd__and2b_2 _2382_ (.A_N(_0432_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0433_));
 sky130_fd_sc_hd__xnor2_2 _2383_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[7] ),
    .B(_0432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0434_));
 sky130_fd_sc_hd__o21a_2 _2384_ (.A1(_0428_),
    .A2(_0430_),
    .B1(_0434_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0435_));
 sky130_fd_sc_hd__o31ai_2 _2385_ (.A1(_0428_),
    .A2(_0430_),
    .A3(_0434_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0436_));
 sky130_fd_sc_hd__a2bb2o_2 _2386_ (.A1_N(_0435_),
    .A2_N(_0436_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[7] ),
    .B2(net34),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0092_));
 sky130_fd_sc_hd__o21a_2 _2387_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0437_));
 sky130_fd_sc_hd__inv_2 _2388_ (.A(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0438_));
 sky130_fd_sc_hd__xnor2_2 _2389_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[8] ),
    .B(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0439_));
 sky130_fd_sc_hd__o21a_2 _2390_ (.A1(_0433_),
    .A2(_0435_),
    .B1(_0439_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0440_));
 sky130_fd_sc_hd__o31ai_2 _2391_ (.A1(_0433_),
    .A2(_0435_),
    .A3(_0439_),
    .B1(net26),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0441_));
 sky130_fd_sc_hd__a2bb2o_2 _2392_ (.A1_N(_0440_),
    .A2_N(_0441_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[8] ),
    .B2(net34),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0093_));
 sky130_fd_sc_hd__a21o_2 _2393_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[8] ),
    .A2(_0438_),
    .B1(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0442_));
 sky130_fd_sc_hd__o21a_2 _2394_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0443_));
 sky130_fd_sc_hd__and2b_2 _2395_ (.A_N(_0443_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0444_));
 sky130_fd_sc_hd__nand2b_2 _2396_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[9] ),
    .B(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0445_));
 sky130_fd_sc_hd__and2b_2 _2397_ (.A_N(_0444_),
    .B(_0445_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0446_));
 sky130_fd_sc_hd__nand2_2 _2398_ (.A(_0442_),
    .B(_0446_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0447_));
 sky130_fd_sc_hd__or2_2 _2399_ (.A(_0442_),
    .B(_0446_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0448_));
 sky130_fd_sc_hd__a32o_2 _2400_ (.A1(net26),
    .A2(_0447_),
    .A3(_0448_),
    .B1(net34),
    .B2(net218),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0094_));
 sky130_fd_sc_hd__o21a_2 _2401_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .A2(net54),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0449_));
 sky130_fd_sc_hd__nand2b_2 _2402_ (.A_N(_0449_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0450_));
 sky130_fd_sc_hd__xnor2_2 _2403_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[10] ),
    .B(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0451_));
 sky130_fd_sc_hd__o21a_2 _2404_ (.A1(_0442_),
    .A2(_0444_),
    .B1(_0445_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0452_));
 sky130_fd_sc_hd__or2_2 _2405_ (.A(_0451_),
    .B(_0452_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0453_));
 sky130_fd_sc_hd__o211ai_2 _2406_ (.A1(_0442_),
    .A2(_0444_),
    .B1(_0445_),
    .C1(_0451_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0454_));
 sky130_fd_sc_hd__a32o_2 _2407_ (.A1(net26),
    .A2(_0453_),
    .A3(_0454_),
    .B1(net34),
    .B2(net239),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0095_));
 sky130_fd_sc_hd__o21a_2 _2408_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .A2(net54),
    .B1(net52),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0455_));
 sky130_fd_sc_hd__o21ai_2 _2409_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .A2(net55),
    .B1(net52),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0456_));
 sky130_fd_sc_hd__nand2_2 _2410_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[11] ),
    .B(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0457_));
 sky130_fd_sc_hd__nor2_2 _2411_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[11] ),
    .B(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0458_));
 sky130_fd_sc_hd__or2_2 _2412_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[11] ),
    .B(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0459_));
 sky130_fd_sc_hd__nand2_2 _2413_ (.A(_0457_),
    .B(_0459_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0460_));
 sky130_fd_sc_hd__nand3_2 _2414_ (.A(_0450_),
    .B(_0454_),
    .C(_0460_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0461_));
 sky130_fd_sc_hd__a21o_2 _2415_ (.A1(_0450_),
    .A2(_0454_),
    .B1(_0460_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0462_));
 sky130_fd_sc_hd__a32o_2 _2416_ (.A1(net27),
    .A2(_0461_),
    .A3(_0462_),
    .B1(net34),
    .B2(net233),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0096_));
 sky130_fd_sc_hd__o21a_2 _2417_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .A2(net55),
    .B1(net52),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0463_));
 sky130_fd_sc_hd__and2b_2 _2418_ (.A_N(_0463_),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0464_));
 sky130_fd_sc_hd__and2b_2 _2419_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_x[12] ),
    .B(_0463_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0465_));
 sky130_fd_sc_hd__or2_2 _2420_ (.A(_0464_),
    .B(_0465_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0466_));
 sky130_fd_sc_hd__a31o_2 _2421_ (.A1(_0450_),
    .A2(_0454_),
    .A3(_0457_),
    .B1(_0458_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0467_));
 sky130_fd_sc_hd__nand2_2 _2422_ (.A(_0466_),
    .B(_0467_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0468_));
 sky130_fd_sc_hd__a311oi_2 _2423_ (.A1(_0450_),
    .A2(_0454_),
    .A3(_0457_),
    .B1(_0458_),
    .C1(_0466_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0469_));
 sky130_fd_sc_hd__inv_2 _2424_ (.A(_0469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0470_));
 sky130_fd_sc_hd__a32o_2 _2425_ (.A1(net27),
    .A2(_0468_),
    .A3(_0470_),
    .B1(net34),
    .B2(net243),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0097_));
 sky130_fd_sc_hd__o21a_2 _2426_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .A2(net55),
    .B1(_0391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0471_));
 sky130_fd_sc_hd__o21ai_2 _2427_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .A2(net55),
    .B1(_0391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0472_));
 sky130_fd_sc_hd__and2_2 _2428_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[13] ),
    .B(_0472_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0473_));
 sky130_fd_sc_hd__or2_2 _2429_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[13] ),
    .B(_0472_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0474_));
 sky130_fd_sc_hd__nand2b_2 _2430_ (.A_N(_0473_),
    .B(_0474_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0475_));
 sky130_fd_sc_hd__or2_2 _2431_ (.A(_0464_),
    .B(_0469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0476_));
 sky130_fd_sc_hd__xnor2_2 _2432_ (.A(_0475_),
    .B(_0476_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0477_));
 sky130_fd_sc_hd__a22o_2 _2433_ (.A1(net230),
    .A2(net34),
    .B1(net27),
    .B2(_0477_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0098_));
 sky130_fd_sc_hd__o21a_2 _2434_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .A2(net55),
    .B1(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0478_));
 sky130_fd_sc_hd__inv_2 _2435_ (.A(_0478_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0479_));
 sky130_fd_sc_hd__xnor2_2 _2436_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[14] ),
    .B(_0478_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0480_));
 sky130_fd_sc_hd__a211oi_2 _2437_ (.A1(_0474_),
    .A2(_0476_),
    .B1(_0480_),
    .C1(_0473_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0481_));
 sky130_fd_sc_hd__o311a_2 _2438_ (.A1(_0464_),
    .A2(_0469_),
    .A3(_0473_),
    .B1(_0474_),
    .C1(_0480_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0482_));
 sky130_fd_sc_hd__nor2_2 _2439_ (.A(_0481_),
    .B(_0482_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0483_));
 sky130_fd_sc_hd__a22o_2 _2440_ (.A1(net227),
    .A2(net34),
    .B1(net27),
    .B2(_0483_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0099_));
 sky130_fd_sc_hd__a21oi_2 _2441_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[14] ),
    .A2(_0479_),
    .B1(_0482_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0484_));
 sky130_fd_sc_hd__xnor2_2 _2442_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_x[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0485_));
 sky130_fd_sc_hd__xnor2_2 _2443_ (.A(_0484_),
    .B(_0485_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0486_));
 sky130_fd_sc_hd__a22o_2 _2444_ (.A1(net222),
    .A2(net37),
    .B1(net27),
    .B2(_0486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0100_));
 sky130_fd_sc_hd__and3_2 _2445_ (.A(net144),
    .B(net168),
    .C(_0055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0487_));
 sky130_fd_sc_hd__a22o_2 _2446_ (.A1(net229),
    .A2(net33),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0101_));
 sky130_fd_sc_hd__a22o_2 _2447_ (.A1(net219),
    .A2(net37),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0102_));
 sky130_fd_sc_hd__a22o_2 _2448_ (.A1(net237),
    .A2(net36),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0103_));
 sky130_fd_sc_hd__a22o_2 _2449_ (.A1(net231),
    .A2(net36),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0104_));
 sky130_fd_sc_hd__a22o_2 _2450_ (.A1(net255),
    .A2(net36),
    .B1(net32),
    .B2(_1673_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0105_));
 sky130_fd_sc_hd__or2_2 _2451_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .B(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0488_));
 sky130_fd_sc_hd__nand2_2 _2452_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .B(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0489_));
 sky130_fd_sc_hd__nand2_2 _2453_ (.A(_0488_),
    .B(_0489_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0490_));
 sky130_fd_sc_hd__a22o_2 _2454_ (.A1(net221),
    .A2(net35),
    .B1(net31),
    .B2(_0490_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0106_));
 sky130_fd_sc_hd__xnor2_2 _2455_ (.A(net142),
    .B(_0488_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0491_));
 sky130_fd_sc_hd__a22o_2 _2456_ (.A1(net238),
    .A2(net35),
    .B1(net31),
    .B2(_0491_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0107_));
 sky130_fd_sc_hd__or3_2 _2457_ (.A(net141),
    .B(net142),
    .C(_0488_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0492_));
 sky130_fd_sc_hd__o21ai_2 _2458_ (.A1(net142),
    .A2(_0488_),
    .B1(net141),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0493_));
 sky130_fd_sc_hd__nand2_2 _2459_ (.A(_0492_),
    .B(_0493_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0494_));
 sky130_fd_sc_hd__a22o_2 _2460_ (.A1(net226),
    .A2(net35),
    .B1(net31),
    .B2(_0494_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0108_));
 sky130_fd_sc_hd__a21o_2 _2461_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .A2(_0492_),
    .B1(_1865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0495_));
 sky130_fd_sc_hd__a22o_2 _2462_ (.A1(net258),
    .A2(net35),
    .B1(net31),
    .B2(_0495_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0109_));
 sky130_fd_sc_hd__nand2_2 _2463_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .B(_1865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0496_));
 sky130_fd_sc_hd__a32o_2 _2464_ (.A1(_1866_),
    .A2(net31),
    .A3(_0496_),
    .B1(net35),
    .B2(net213),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0110_));
 sky130_fd_sc_hd__a22o_2 _2465_ (.A1(net215),
    .A2(net33),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0111_));
 sky130_fd_sc_hd__a22o_2 _2466_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[1] ),
    .A2(net33),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0112_));
 sky130_fd_sc_hd__or2_2 _2467_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[2] ),
    .B(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0497_));
 sky130_fd_sc_hd__mux2_1 _2468_ (.A0(_0497_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .S(net30),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0113_));
 sky130_fd_sc_hd__a22o_2 _2469_ (.A1(net225),
    .A2(net37),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0114_));
 sky130_fd_sc_hd__or2_2 _2470_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[4] ),
    .B(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0498_));
 sky130_fd_sc_hd__mux2_1 _2471_ (.A0(_0498_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .S(net30),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0115_));
 sky130_fd_sc_hd__a22o_2 _2472_ (.A1(net217),
    .A2(net37),
    .B1(net30),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0116_));
 sky130_fd_sc_hd__or2_2 _2473_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[6] ),
    .B(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0499_));
 sky130_fd_sc_hd__mux2_1 _2474_ (.A0(_0499_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .S(_0487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0117_));
 sky130_fd_sc_hd__or2_2 _2475_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[7] ),
    .B(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0500_));
 sky130_fd_sc_hd__mux2_1 _2476_ (.A0(_0500_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .S(_0487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0118_));
 sky130_fd_sc_hd__a22o_2 _2477_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[8] ),
    .A2(net36),
    .B1(net32),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0119_));
 sky130_fd_sc_hd__a22o_2 _2478_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[9] ),
    .A2(net36),
    .B1(net32),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0120_));
 sky130_fd_sc_hd__o2bb2a_2 _2479_ (.A1_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .A2_N(net32),
    .B1(_0383_),
    .B2(net266),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0121_));
 sky130_fd_sc_hd__a32o_2 _2480_ (.A1(net31),
    .A2(_0488_),
    .A3(_0489_),
    .B1(net35),
    .B2(net214),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0122_));
 sky130_fd_sc_hd__xnor2_2 _2481_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ),
    .B(_0489_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0501_));
 sky130_fd_sc_hd__a22o_2 _2482_ (.A1(net240),
    .A2(net35),
    .B1(net31),
    .B2(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0123_));
 sky130_fd_sc_hd__and4_2 _2483_ (.A(net141),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ),
    .C(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .D(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0502_));
 sky130_fd_sc_hd__inv_2 _2484_ (.A(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0503_));
 sky130_fd_sc_hd__a31o_2 _2485_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .A3(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[11] ),
    .B1(net141),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0504_));
 sky130_fd_sc_hd__a32o_2 _2486_ (.A1(net31),
    .A2(_0503_),
    .A3(_0504_),
    .B1(net35),
    .B2(net216),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0124_));
 sky130_fd_sc_hd__nand2_2 _2487_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .B(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0505_));
 sky130_fd_sc_hd__or2_2 _2488_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .B(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0506_));
 sky130_fd_sc_hd__a32o_2 _2489_ (.A1(net31),
    .A2(_0505_),
    .A3(_0506_),
    .B1(net35),
    .B2(net232),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0125_));
 sky130_fd_sc_hd__xnor2_2 _2490_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .B(_0505_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0507_));
 sky130_fd_sc_hd__a22o_2 _2491_ (.A1(net228),
    .A2(net36),
    .B1(net31),
    .B2(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_1 _2492_ (.A0(net2),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .S(net39),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_1 _2493_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[0] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _2494_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[1] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_1 _2495_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[2] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _2496_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[3] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _2497_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[4] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _2498_ (.A0(\u_eml_serial_gate.rx_byte_shift_reg[5] ),
    .A1(\u_eml_serial_gate.rx_byte_shift_reg[6] ),
    .S(net38),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0133_));
 sky130_fd_sc_hd__xnor2_2 _2499_ (.A(\u_eml_serial_gate.rx_bit_count_reg[0] ),
    .B(net39),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0134_));
 sky130_fd_sc_hd__a21oi_2 _2500_ (.A1(\u_eml_serial_gate.rx_bit_count_reg[0] ),
    .A2(_1731_),
    .B1(\u_eml_serial_gate.rx_bit_count_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0508_));
 sky130_fd_sc_hd__nor2_2 _2501_ (.A(_1742_),
    .B(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0135_));
 sky130_fd_sc_hd__or2_2 _2502_ (.A(\u_eml_serial_gate.rx_bit_count_reg[2] ),
    .B(_1742_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0509_));
 sky130_fd_sc_hd__o21a_2 _2503_ (.A1(_1724_),
    .A2(net39),
    .B1(_0509_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0136_));
 sky130_fd_sc_hd__a211o_2 _2504_ (.A1(rx_full_ext),
    .A2(_1723_),
    .B1(_1724_),
    .C1(net39),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0510_));
 sky130_fd_sc_hd__nor2_2 _2505_ (.A(_1724_),
    .B(_1818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0511_));
 sky130_fd_sc_hd__mux2_1 _2506_ (.A0(_0511_),
    .A1(_0510_),
    .S(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0137_));
 sky130_fd_sc_hd__a21o_2 _2507_ (.A1(_1739_),
    .A2(_0511_),
    .B1(_0510_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0512_));
 sky130_fd_sc_hd__a21o_2 _2508_ (.A1(\u_eml_serial_gate.rx_byte_count_reg[0] ),
    .A2(_0511_),
    .B1(\u_eml_serial_gate.rx_byte_count_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0513_));
 sky130_fd_sc_hd__and2_2 _2509_ (.A(_0512_),
    .B(_0513_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0138_));
 sky130_fd_sc_hd__a21o_2 _2510_ (.A1(\u_eml_serial_gate.rx_byte_count_reg[2] ),
    .A2(_0512_),
    .B1(_1819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _2511_ (.A0(\u_eml_serial_gate.gate_x_reg[0] ),
    .A1(\u_eml_serial_gate.op_a_reg[0] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _2512_ (.A0(\u_eml_serial_gate.gate_x_reg[1] ),
    .A1(\u_eml_serial_gate.op_a_reg[1] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _2513_ (.A0(\u_eml_serial_gate.gate_x_reg[2] ),
    .A1(\u_eml_serial_gate.op_a_reg[2] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_1 _2514_ (.A0(\u_eml_serial_gate.gate_x_reg[3] ),
    .A1(\u_eml_serial_gate.op_a_reg[3] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_1 _2515_ (.A0(\u_eml_serial_gate.gate_x_reg[4] ),
    .A1(\u_eml_serial_gate.op_a_reg[4] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _2516_ (.A0(\u_eml_serial_gate.gate_x_reg[5] ),
    .A1(\u_eml_serial_gate.op_a_reg[5] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _2517_ (.A0(\u_eml_serial_gate.gate_x_reg[6] ),
    .A1(\u_eml_serial_gate.op_a_reg[6] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _2518_ (.A0(\u_eml_serial_gate.gate_x_reg[7] ),
    .A1(\u_eml_serial_gate.op_a_reg[7] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _2519_ (.A0(\u_eml_serial_gate.gate_x_reg[8] ),
    .A1(\u_eml_serial_gate.op_a_reg[8] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_1 _2520_ (.A0(\u_eml_serial_gate.gate_x_reg[9] ),
    .A1(\u_eml_serial_gate.op_a_reg[9] ),
    .S(net62),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_1 _2521_ (.A0(\u_eml_serial_gate.gate_x_reg[10] ),
    .A1(\u_eml_serial_gate.op_a_reg[10] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_1 _2522_ (.A0(\u_eml_serial_gate.gate_x_reg[11] ),
    .A1(\u_eml_serial_gate.op_a_reg[11] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_1 _2523_ (.A0(\u_eml_serial_gate.gate_x_reg[12] ),
    .A1(\u_eml_serial_gate.op_a_reg[12] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_1 _2524_ (.A0(\u_eml_serial_gate.gate_x_reg[13] ),
    .A1(\u_eml_serial_gate.op_a_reg[13] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _2525_ (.A0(\u_eml_serial_gate.gate_x_reg[14] ),
    .A1(\u_eml_serial_gate.op_a_reg[14] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _2526_ (.A0(\u_eml_serial_gate.gate_x_reg[15] ),
    .A1(\u_eml_serial_gate.op_a_reg[15] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _2527_ (.A0(\u_eml_serial_gate.gate_y_reg[0] ),
    .A1(\u_eml_serial_gate.op_b_reg[0] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _2528_ (.A0(\u_eml_serial_gate.gate_y_reg[1] ),
    .A1(\u_eml_serial_gate.op_b_reg[1] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _2529_ (.A0(\u_eml_serial_gate.gate_y_reg[2] ),
    .A1(\u_eml_serial_gate.op_b_reg[2] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _2530_ (.A0(\u_eml_serial_gate.gate_y_reg[3] ),
    .A1(\u_eml_serial_gate.op_b_reg[3] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _2531_ (.A0(\u_eml_serial_gate.gate_y_reg[4] ),
    .A1(\u_eml_serial_gate.op_b_reg[4] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _2532_ (.A0(\u_eml_serial_gate.gate_y_reg[5] ),
    .A1(\u_eml_serial_gate.op_b_reg[5] ),
    .S(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_1 _2533_ (.A0(\u_eml_serial_gate.gate_y_reg[6] ),
    .A1(\u_eml_serial_gate.op_b_reg[6] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _2534_ (.A0(\u_eml_serial_gate.gate_y_reg[7] ),
    .A1(\u_eml_serial_gate.op_b_reg[7] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _2535_ (.A0(\u_eml_serial_gate.gate_y_reg[8] ),
    .A1(\u_eml_serial_gate.op_b_reg[8] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _2536_ (.A0(\u_eml_serial_gate.gate_y_reg[9] ),
    .A1(\u_eml_serial_gate.op_b_reg[9] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_1 _2537_ (.A0(\u_eml_serial_gate.gate_y_reg[10] ),
    .A1(\u_eml_serial_gate.op_b_reg[10] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _2538_ (.A0(\u_eml_serial_gate.gate_y_reg[11] ),
    .A1(\u_eml_serial_gate.op_b_reg[11] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_1 _2539_ (.A0(\u_eml_serial_gate.gate_y_reg[12] ),
    .A1(\u_eml_serial_gate.op_b_reg[12] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_1 _2540_ (.A0(\u_eml_serial_gate.gate_y_reg[13] ),
    .A1(\u_eml_serial_gate.op_b_reg[13] ),
    .S(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_1 _2541_ (.A0(\u_eml_serial_gate.gate_y_reg[14] ),
    .A1(\u_eml_serial_gate.op_b_reg[14] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _2542_ (.A0(\u_eml_serial_gate.gate_y_reg[15] ),
    .A1(\u_eml_serial_gate.op_b_reg[15] ),
    .S(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0171_));
 sky130_fd_sc_hd__o22a_2 _2543_ (.A1(\u_eml_serial_gate.gate_start_reg ),
    .A2(\u_eml_serial_gate.gate_error ),
    .B1(_1857_),
    .B2(\u_eml_serial_gate.gate_func_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0172_));
 sky130_fd_sc_hd__a22o_2 _2544_ (.A1(\u_eml_serial_gate.gate_domain_error ),
    .A2(_1857_),
    .B1(_1858_),
    .B2(_1856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0173_));
 sky130_fd_sc_hd__or3_2 _2545_ (.A(_1676_),
    .B(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .C(_1860_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0514_));
 sky130_fd_sc_hd__inv_2 _2546_ (.A(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0515_));
 sky130_fd_sc_hd__and2_2 _2547_ (.A(\u_eml_serial_gate.gate_overflow ),
    .B(_1857_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0516_));
 sky130_fd_sc_hd__nand2b_2 _2548_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .B(\u_eml_serial_gate.gate_result[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0517_));
 sky130_fd_sc_hd__nand2b_2 _2549_ (.A_N(\u_eml_serial_gate.gate_result[14] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0518_));
 sky130_fd_sc_hd__nand2_2 _2550_ (.A(_0517_),
    .B(_0518_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0519_));
 sky130_fd_sc_hd__and2b_2 _2551_ (.A_N(net141),
    .B(\u_eml_serial_gate.gate_result[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0520_));
 sky130_fd_sc_hd__and2b_2 _2552_ (.A_N(\u_eml_serial_gate.gate_result[13] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0521_));
 sky130_fd_sc_hd__nand2b_2 _2553_ (.A_N(net142),
    .B(\u_eml_serial_gate.gate_result[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0522_));
 sky130_fd_sc_hd__nand2b_2 _2554_ (.A_N(\u_eml_serial_gate.gate_result[12] ),
    .B(net142),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0523_));
 sky130_fd_sc_hd__nand2_2 _2555_ (.A(_0522_),
    .B(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0524_));
 sky130_fd_sc_hd__and2b_2 _2556_ (.A_N(\u_eml_serial_gate.gate_result[11] ),
    .B(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0525_));
 sky130_fd_sc_hd__nand2b_2 _2557_ (.A_N(\u_eml_serial_gate.gate_result[11] ),
    .B(net143),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0526_));
 sky130_fd_sc_hd__and2b_2 _2558_ (.A_N(net143),
    .B(\u_eml_serial_gate.gate_result[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0527_));
 sky130_fd_sc_hd__and2_2 _2559_ (.A(_1673_),
    .B(\u_eml_serial_gate.gate_result[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0528_));
 sky130_fd_sc_hd__nor2_2 _2560_ (.A(_1673_),
    .B(\u_eml_serial_gate.gate_result[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0529_));
 sky130_fd_sc_hd__nor2_2 _2561_ (.A(_0528_),
    .B(_0529_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0530_));
 sky130_fd_sc_hd__nand2b_2 _2562_ (.A_N(\u_eml_serial_gate.gate_result[9] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0531_));
 sky130_fd_sc_hd__and2b_2 _2563_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .B(\u_eml_serial_gate.gate_result[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0532_));
 sky130_fd_sc_hd__inv_2 _2564_ (.A(_0532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0533_));
 sky130_fd_sc_hd__nand2b_2 _2565_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .B(\u_eml_serial_gate.gate_result[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0534_));
 sky130_fd_sc_hd__inv_2 _2566_ (.A(_0534_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0535_));
 sky130_fd_sc_hd__nand2b_2 _2567_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .B(\u_eml_serial_gate.gate_result[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0536_));
 sky130_fd_sc_hd__nand2b_2 _2568_ (.A_N(\u_eml_serial_gate.gate_result[7] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0537_));
 sky130_fd_sc_hd__nand2_2 _2569_ (.A(_0536_),
    .B(_0537_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0538_));
 sky130_fd_sc_hd__nand2b_2 _2570_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .B(\u_eml_serial_gate.gate_result[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0539_));
 sky130_fd_sc_hd__nand2b_2 _2571_ (.A_N(\u_eml_serial_gate.gate_result[6] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0540_));
 sky130_fd_sc_hd__nand2b_2 _2572_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .B(\u_eml_serial_gate.gate_result[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0541_));
 sky130_fd_sc_hd__nand2b_2 _2573_ (.A_N(\u_eml_serial_gate.gate_result[5] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0542_));
 sky130_fd_sc_hd__nand2b_2 _2574_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .B(\u_eml_serial_gate.gate_result[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0543_));
 sky130_fd_sc_hd__nand2b_2 _2575_ (.A_N(\u_eml_serial_gate.gate_result[4] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0544_));
 sky130_fd_sc_hd__nand2b_2 _2576_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .B(\u_eml_serial_gate.gate_result[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0545_));
 sky130_fd_sc_hd__nand2b_2 _2577_ (.A_N(\u_eml_serial_gate.gate_result[3] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0546_));
 sky130_fd_sc_hd__nand2b_2 _2578_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .B(\u_eml_serial_gate.gate_result[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0547_));
 sky130_fd_sc_hd__nand2b_2 _2579_ (.A_N(\u_eml_serial_gate.gate_result[2] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0548_));
 sky130_fd_sc_hd__nand2b_2 _2580_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .B(\u_eml_serial_gate.gate_result[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0549_));
 sky130_fd_sc_hd__nand2b_2 _2581_ (.A_N(\u_eml_serial_gate.gate_result[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0550_));
 sky130_fd_sc_hd__nand2b_2 _2582_ (.A_N(\u_eml_serial_gate.gate_result[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0551_));
 sky130_fd_sc_hd__and3_2 _2583_ (.A(_0549_),
    .B(_0550_),
    .C(_0551_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0552_));
 sky130_fd_sc_hd__a21bo_2 _2584_ (.A1(_0550_),
    .A2(_0551_),
    .B1_N(_0549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0553_));
 sky130_fd_sc_hd__and3_2 _2585_ (.A(_0547_),
    .B(_0548_),
    .C(_0553_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0554_));
 sky130_fd_sc_hd__a21bo_2 _2586_ (.A1(_0548_),
    .A2(_0553_),
    .B1_N(_0547_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0555_));
 sky130_fd_sc_hd__and3_2 _2587_ (.A(_0545_),
    .B(_0546_),
    .C(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0556_));
 sky130_fd_sc_hd__a21bo_2 _2588_ (.A1(_0546_),
    .A2(_0555_),
    .B1_N(_0545_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0557_));
 sky130_fd_sc_hd__and3_2 _2589_ (.A(_0543_),
    .B(_0544_),
    .C(_0557_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0558_));
 sky130_fd_sc_hd__a21bo_2 _2590_ (.A1(_0544_),
    .A2(_0557_),
    .B1_N(_0543_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0559_));
 sky130_fd_sc_hd__and3_2 _2591_ (.A(_0541_),
    .B(_0542_),
    .C(_0559_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0560_));
 sky130_fd_sc_hd__a21bo_2 _2592_ (.A1(_0542_),
    .A2(_0559_),
    .B1_N(_0541_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0561_));
 sky130_fd_sc_hd__nand3_2 _2593_ (.A(_0539_),
    .B(_0540_),
    .C(_0561_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0562_));
 sky130_fd_sc_hd__a21bo_2 _2594_ (.A1(_0540_),
    .A2(_0561_),
    .B1_N(_0539_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0563_));
 sky130_fd_sc_hd__a21bo_2 _2595_ (.A1(_0537_),
    .A2(_0563_),
    .B1_N(_0536_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0564_));
 sky130_fd_sc_hd__nand2b_2 _2596_ (.A_N(\u_eml_serial_gate.gate_result[8] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0565_));
 sky130_fd_sc_hd__nand3_2 _2597_ (.A(_0534_),
    .B(_0564_),
    .C(_0565_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0566_));
 sky130_fd_sc_hd__nand2_2 _2598_ (.A(_0534_),
    .B(_0566_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0567_));
 sky130_fd_sc_hd__a211o_2 _2599_ (.A1(_0564_),
    .A2(_0565_),
    .B1(_0532_),
    .C1(_0535_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0568_));
 sky130_fd_sc_hd__and3_2 _2600_ (.A(_0530_),
    .B(_0531_),
    .C(_0568_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0569_));
 sky130_fd_sc_hd__a31o_2 _2601_ (.A1(_0530_),
    .A2(_0531_),
    .A3(_0568_),
    .B1(_0528_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0570_));
 sky130_fd_sc_hd__a21oi_2 _2602_ (.A1(_0526_),
    .A2(_0570_),
    .B1(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0571_));
 sky130_fd_sc_hd__o21ai_2 _2603_ (.A1(_0524_),
    .A2(_0571_),
    .B1(_0522_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0572_));
 sky130_fd_sc_hd__o21ba_2 _2604_ (.A1(_0520_),
    .A2(_0572_),
    .B1_N(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0573_));
 sky130_fd_sc_hd__a21boi_2 _2605_ (.A1(_0518_),
    .A2(_0573_),
    .B1_N(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0574_));
 sky130_fd_sc_hd__or3b_2 _2606_ (.A(net140),
    .B(_0574_),
    .C_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0575_));
 sky130_fd_sc_hd__nor2_2 _2607_ (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .B(_1677_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0576_));
 sky130_fd_sc_hd__a21oi_2 _2608_ (.A1(_0574_),
    .A2(_0576_),
    .B1(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0577_));
 sky130_fd_sc_hd__a21o_2 _2609_ (.A1(_0574_),
    .A2(_0576_),
    .B1(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0578_));
 sky130_fd_sc_hd__o2bb2a_2 _2610_ (.A1_N(_0575_),
    .A2_N(net8),
    .B1(_0515_),
    .B2(_0516_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0174_));
 sky130_fd_sc_hd__nor2_2 _2611_ (.A(_1711_),
    .B(_1712_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0579_));
 sky130_fd_sc_hd__nor2_2 _2612_ (.A(_1708_),
    .B(_1860_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0580_));
 sky130_fd_sc_hd__or2_2 _2613_ (.A(_1707_),
    .B(_1709_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0581_));
 sky130_fd_sc_hd__nor2_2 _2614_ (.A(_1912_),
    .B(_0581_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0582_));
 sky130_fd_sc_hd__o21ba_2 _2615_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ),
    .A2(_1919_),
    .B1_N(_1914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0583_));
 sky130_fd_sc_hd__a211o_2 _2616_ (.A1(_1713_),
    .A2(net91),
    .B1(_0582_),
    .C1(_1921_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0584_));
 sky130_fd_sc_hd__a2111o_2 _2617_ (.A1(_1862_),
    .A2(_1867_),
    .B1(_1913_),
    .C1(_0579_),
    .D1(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0585_));
 sky130_fd_sc_hd__nor2_2 _2618_ (.A(_0584_),
    .B(_0585_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0586_));
 sky130_fd_sc_hd__nor2_2 _2619_ (.A(_1719_),
    .B(_1859_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0587_));
 sky130_fd_sc_hd__o221a_2 _2620_ (.A1(net144),
    .A2(_1709_),
    .B1(_1719_),
    .B2(_1859_),
    .C1(_1914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0588_));
 sky130_fd_sc_hd__nand2_2 _2621_ (.A(_1861_),
    .B(_0588_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0589_));
 sky130_fd_sc_hd__mux2_1 _2622_ (.A0(net144),
    .A1(_0589_),
    .S(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0175_));
 sky130_fd_sc_hd__nand2_2 _2623_ (.A(_1910_),
    .B(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0590_));
 sky130_fd_sc_hd__o211a_2 _2624_ (.A1(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.state[0] ),
    .B1(_1676_),
    .C1(_1707_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0591_));
 sky130_fd_sc_hd__o32a_2 _2625_ (.A1(_0515_),
    .A2(_0590_),
    .A3(_0591_),
    .B1(_0586_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_1 _2626_ (.A0(_1708_),
    .A1(_1709_),
    .S(_1707_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0592_));
 sky130_fd_sc_hd__inv_2 _2627_ (.A(_0592_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0593_));
 sky130_fd_sc_hd__mux2_1 _2628_ (.A0(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .A1(_0593_),
    .S(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0177_));
 sky130_fd_sc_hd__o31ai_2 _2629_ (.A1(\u_eml_serial_gate.u_eml_gate_top.state[1] ),
    .A2(_1676_),
    .A3(\u_eml_serial_gate.u_eml_gate_top.state[2] ),
    .B1(_0581_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0594_));
 sky130_fd_sc_hd__o22a_2 _2630_ (.A1(\u_eml_serial_gate.u_eml_gate_top.state[3] ),
    .A2(_0586_),
    .B1(_0590_),
    .B2(_0594_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_1 _2631_ (.A0(\u_eml_serial_gate.gate_x_reg[0] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[0] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0179_));
 sky130_fd_sc_hd__mux2_1 _2632_ (.A0(\u_eml_serial_gate.gate_x_reg[1] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[1] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0180_));
 sky130_fd_sc_hd__mux2_1 _2633_ (.A0(\u_eml_serial_gate.gate_x_reg[2] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[2] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_1 _2634_ (.A0(\u_eml_serial_gate.gate_x_reg[3] ),
    .A1(net261),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0182_));
 sky130_fd_sc_hd__mux2_1 _2635_ (.A0(\u_eml_serial_gate.gate_x_reg[4] ),
    .A1(net260),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0183_));
 sky130_fd_sc_hd__mux2_1 _2636_ (.A0(\u_eml_serial_gate.gate_x_reg[5] ),
    .A1(net251),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0184_));
 sky130_fd_sc_hd__mux2_1 _2637_ (.A0(\u_eml_serial_gate.gate_x_reg[6] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[6] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0185_));
 sky130_fd_sc_hd__mux2_1 _2638_ (.A0(\u_eml_serial_gate.gate_x_reg[7] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[7] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0186_));
 sky130_fd_sc_hd__mux2_1 _2639_ (.A0(\u_eml_serial_gate.gate_x_reg[8] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_x[8] ),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_1 _2640_ (.A0(\u_eml_serial_gate.gate_x_reg[9] ),
    .A1(net259),
    .S(net15),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0188_));
 sky130_fd_sc_hd__mux2_1 _2641_ (.A0(\u_eml_serial_gate.u_eml_gate_top.reg_x[10] ),
    .A1(\u_eml_serial_gate.gate_x_reg[10] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0189_));
 sky130_fd_sc_hd__mux2_1 _2642_ (.A0(\u_eml_serial_gate.u_eml_gate_top.reg_x[11] ),
    .A1(\u_eml_serial_gate.gate_x_reg[11] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0190_));
 sky130_fd_sc_hd__mux2_1 _2643_ (.A0(net248),
    .A1(\u_eml_serial_gate.gate_x_reg[12] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0191_));
 sky130_fd_sc_hd__mux2_1 _2644_ (.A0(net254),
    .A1(\u_eml_serial_gate.gate_x_reg[13] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0192_));
 sky130_fd_sc_hd__mux2_1 _2645_ (.A0(\u_eml_serial_gate.u_eml_gate_top.reg_x[14] ),
    .A1(\u_eml_serial_gate.gate_x_reg[14] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0193_));
 sky130_fd_sc_hd__mux2_1 _2646_ (.A0(\u_eml_serial_gate.u_eml_gate_top.reg_x[15] ),
    .A1(\u_eml_serial_gate.gate_x_reg[15] ),
    .S(net18),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0194_));
 sky130_fd_sc_hd__a211o_2 _2647_ (.A1(_1719_),
    .A2(net45),
    .B1(_1921_),
    .C1(_1868_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0595_));
 sky130_fd_sc_hd__or2_2 _2648_ (.A(_1913_),
    .B(_0595_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0596_));
 sky130_fd_sc_hd__or3_2 _2649_ (.A(_1911_),
    .B(net56),
    .C(_0596_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0597_));
 sky130_fd_sc_hd__nand2_2 _2650_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0598_));
 sky130_fd_sc_hd__or2_2 _2651_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0599_));
 sky130_fd_sc_hd__nand2_2 _2652_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0600_));
 sky130_fd_sc_hd__or2_2 _2653_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0601_));
 sky130_fd_sc_hd__nand2_2 _2654_ (.A(_0600_),
    .B(_0601_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0602_));
 sky130_fd_sc_hd__nand2_2 _2655_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0603_));
 sky130_fd_sc_hd__or2_2 _2656_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0604_));
 sky130_fd_sc_hd__nand2_2 _2657_ (.A(_0603_),
    .B(_0604_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0605_));
 sky130_fd_sc_hd__inv_2 _2658_ (.A(_0605_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0606_));
 sky130_fd_sc_hd__nand2_2 _2659_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ),
    .B(_0463_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0607_));
 sky130_fd_sc_hd__inv_2 _2660_ (.A(_0607_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0608_));
 sky130_fd_sc_hd__or2_2 _2661_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ),
    .B(_0463_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0609_));
 sky130_fd_sc_hd__or2_2 _2662_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .B(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0610_));
 sky130_fd_sc_hd__nand2_2 _2663_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .B(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0611_));
 sky130_fd_sc_hd__and2_2 _2664_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .B(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0612_));
 sky130_fd_sc_hd__or2_2 _2665_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .B(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0613_));
 sky130_fd_sc_hd__xnor2_2 _2666_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .B(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0614_));
 sky130_fd_sc_hd__inv_2 _2667_ (.A(_0614_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0615_));
 sky130_fd_sc_hd__nand2_2 _2668_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ),
    .B(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0616_));
 sky130_fd_sc_hd__inv_2 _2669_ (.A(_0616_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0617_));
 sky130_fd_sc_hd__or2_2 _2670_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ),
    .B(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0618_));
 sky130_fd_sc_hd__nand2_2 _2671_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ),
    .B(_0432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0619_));
 sky130_fd_sc_hd__inv_2 _2672_ (.A(_0619_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0620_));
 sky130_fd_sc_hd__nor2_2 _2673_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ),
    .B(_0432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0621_));
 sky130_fd_sc_hd__inv_2 _2674_ (.A(_0621_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0622_));
 sky130_fd_sc_hd__or2_2 _2675_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .B(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0623_));
 sky130_fd_sc_hd__nand2_2 _2676_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .B(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0624_));
 sky130_fd_sc_hd__nand2_2 _2677_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0625_));
 sky130_fd_sc_hd__or2_2 _2678_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0626_));
 sky130_fd_sc_hd__nand2_2 _2679_ (.A(_0625_),
    .B(_0626_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0627_));
 sky130_fd_sc_hd__nor2_2 _2680_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0628_));
 sky130_fd_sc_hd__nand2_2 _2681_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0629_));
 sky130_fd_sc_hd__and2_2 _2682_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .B(_0409_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0630_));
 sky130_fd_sc_hd__and3_2 _2683_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ),
    .B(net52),
    .C(_0403_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0631_));
 sky130_fd_sc_hd__nand2_2 _2684_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .B(_0396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0632_));
 sky130_fd_sc_hd__a21o_2 _2685_ (.A1(net52),
    .A2(_0403_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0633_));
 sky130_fd_sc_hd__nand2b_2 _2686_ (.A_N(_0631_),
    .B(_0633_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0634_));
 sky130_fd_sc_hd__a31o_2 _2687_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .A2(_0396_),
    .A3(_0633_),
    .B1(_0631_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0635_));
 sky130_fd_sc_hd__or2_2 _2688_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .B(_0409_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0636_));
 sky130_fd_sc_hd__nand2b_2 _2689_ (.A_N(_0630_),
    .B(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0637_));
 sky130_fd_sc_hd__a21oi_2 _2690_ (.A1(_0635_),
    .A2(_0636_),
    .B1(_0630_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0638_));
 sky130_fd_sc_hd__o21a_2 _2691_ (.A1(_0628_),
    .A2(_0638_),
    .B1(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0639_));
 sky130_fd_sc_hd__or2_2 _2692_ (.A(_0627_),
    .B(_0639_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0640_));
 sky130_fd_sc_hd__nand2_2 _2693_ (.A(_0625_),
    .B(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0641_));
 sky130_fd_sc_hd__o211ai_2 _2694_ (.A1(_0627_),
    .A2(_0639_),
    .B1(_0624_),
    .C1(_0625_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0642_));
 sky130_fd_sc_hd__nand2_2 _2695_ (.A(_0623_),
    .B(_0642_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0643_));
 sky130_fd_sc_hd__or3_2 _2696_ (.A(_0620_),
    .B(_0621_),
    .C(_0643_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0644_));
 sky130_fd_sc_hd__a31o_2 _2697_ (.A1(_0622_),
    .A2(_0623_),
    .A3(_0642_),
    .B1(_0620_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0645_));
 sky130_fd_sc_hd__nand2_2 _2698_ (.A(_0618_),
    .B(_0645_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0646_));
 sky130_fd_sc_hd__a21oi_2 _2699_ (.A1(_0616_),
    .A2(_0646_),
    .B1(_0614_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0647_));
 sky130_fd_sc_hd__o211ai_2 _2700_ (.A1(_0617_),
    .A2(_0645_),
    .B1(_0618_),
    .C1(_0615_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0648_));
 sky130_fd_sc_hd__a21o_2 _2701_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .A2(_0443_),
    .B1(_0647_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0649_));
 sky130_fd_sc_hd__a31o_2 _2702_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .A2(_0443_),
    .A3(_0613_),
    .B1(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0650_));
 sky130_fd_sc_hd__nand2b_2 _2703_ (.A_N(_0612_),
    .B(_0613_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0651_));
 sky130_fd_sc_hd__o21bai_2 _2704_ (.A1(_0648_),
    .A2(_0651_),
    .B1_N(_0650_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0652_));
 sky130_fd_sc_hd__a31o_2 _2705_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .A2(_0455_),
    .A3(_0609_),
    .B1(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0653_));
 sky130_fd_sc_hd__a21o_2 _2706_ (.A1(_0609_),
    .A2(_0610_),
    .B1(_0608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0654_));
 sky130_fd_sc_hd__o21ai_2 _2707_ (.A1(_0652_),
    .A2(_0653_),
    .B1(_0654_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0655_));
 sky130_fd_sc_hd__o211ai_2 _2708_ (.A1(_0652_),
    .A2(_0653_),
    .B1(_0654_),
    .C1(_0606_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0656_));
 sky130_fd_sc_hd__a21boi_2 _2709_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .A2(_0478_),
    .B1_N(_0603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0657_));
 sky130_fd_sc_hd__xor2_2 _2710_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .B(_0478_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0658_));
 sky130_fd_sc_hd__o2bb2a_2 _2711_ (.A1_N(_0656_),
    .A2_N(_0657_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .B2(_0478_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0659_));
 sky130_fd_sc_hd__a21bo_2 _2712_ (.A1(_0601_),
    .A2(_0659_),
    .B1_N(_0600_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0660_));
 sky130_fd_sc_hd__a21bo_2 _2713_ (.A1(_0598_),
    .A2(_0660_),
    .B1_N(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0661_));
 sky130_fd_sc_hd__nor2_2 _2714_ (.A(_1890_),
    .B(_0661_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0662_));
 sky130_fd_sc_hd__a221o_2 _2715_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .A2(net48),
    .B1(net45),
    .B2(\u_eml_serial_gate.gate_y_reg[15] ),
    .C1(_0662_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0663_));
 sky130_fd_sc_hd__mux2_1 _2716_ (.A0(_0663_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .S(_0597_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0195_));
 sky130_fd_sc_hd__xnor2_2 _2717_ (.A(_0602_),
    .B(_0659_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0664_));
 sky130_fd_sc_hd__nand2_2 _2718_ (.A(_0598_),
    .B(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0665_));
 sky130_fd_sc_hd__xnor2_2 _2719_ (.A(_0660_),
    .B(_0665_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0666_));
 sky130_fd_sc_hd__and2_2 _2720_ (.A(_0664_),
    .B(_0666_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0667_));
 sky130_fd_sc_hd__o21ai_2 _2721_ (.A1(_0661_),
    .A2(_0667_),
    .B1(net58),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0668_));
 sky130_fd_sc_hd__o21ai_2 _2722_ (.A1(_0664_),
    .A2(_0666_),
    .B1(_0661_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0669_));
 sky130_fd_sc_hd__a21oi_2 _2723_ (.A1(_0392_),
    .A2(_0669_),
    .B1(net6),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0670_));
 sky130_fd_sc_hd__nor2_2 _2724_ (.A(_1911_),
    .B(_0596_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0671_));
 sky130_fd_sc_hd__or2_2 _2725_ (.A(_1911_),
    .B(_0596_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0672_));
 sky130_fd_sc_hd__a221o_2 _2726_ (.A1(\u_eml_serial_gate.gate_y_reg[0] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0673_));
 sky130_fd_sc_hd__o22a_2 _2727_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ),
    .A2(net13),
    .B1(_0673_),
    .B2(_0670_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0196_));
 sky130_fd_sc_hd__or2_2 _2728_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .B(_0396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0674_));
 sky130_fd_sc_hd__and3b_2 _2729_ (.A_N(net6),
    .B(_0674_),
    .C(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0675_));
 sky130_fd_sc_hd__nor2_2 _2730_ (.A(_1890_),
    .B(_0669_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0676_));
 sky130_fd_sc_hd__a22o_2 _2731_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ),
    .A2(net48),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0677_));
 sky130_fd_sc_hd__a211o_2 _2732_ (.A1(\u_eml_serial_gate.gate_y_reg[1] ),
    .A2(net44),
    .B1(net11),
    .C1(_0677_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0678_));
 sky130_fd_sc_hd__o32a_2 _2733_ (.A1(_0675_),
    .A2(net5),
    .A3(_0678_),
    .B1(net13),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0197_));
 sky130_fd_sc_hd__xnor2_2 _2734_ (.A(_0632_),
    .B(_0634_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0679_));
 sky130_fd_sc_hd__nor2_2 _2735_ (.A(net6),
    .B(_0679_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0680_));
 sky130_fd_sc_hd__a221o_2 _2736_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ),
    .A2(net48),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0681_));
 sky130_fd_sc_hd__a211o_2 _2737_ (.A1(\u_eml_serial_gate.gate_y_reg[2] ),
    .A2(net44),
    .B1(net5),
    .C1(_0681_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0682_));
 sky130_fd_sc_hd__o22a_2 _2738_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .A2(net13),
    .B1(_0680_),
    .B2(_0682_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0198_));
 sky130_fd_sc_hd__xor2_2 _2739_ (.A(_0635_),
    .B(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0683_));
 sky130_fd_sc_hd__nor2_2 _2740_ (.A(net6),
    .B(_0683_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0684_));
 sky130_fd_sc_hd__a221o_2 _2741_ (.A1(\u_eml_serial_gate.gate_y_reg[3] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0685_));
 sky130_fd_sc_hd__a211o_2 _2742_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ),
    .A2(net48),
    .B1(net5),
    .C1(_0685_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0686_));
 sky130_fd_sc_hd__o22a_2 _2743_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .A2(net13),
    .B1(_0684_),
    .B2(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0199_));
 sky130_fd_sc_hd__nand2b_2 _2744_ (.A_N(_0628_),
    .B(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0687_));
 sky130_fd_sc_hd__xnor2_2 _2745_ (.A(_0638_),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0688_));
 sky130_fd_sc_hd__nor2_2 _2746_ (.A(net6),
    .B(_0688_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0689_));
 sky130_fd_sc_hd__a221o_2 _2747_ (.A1(\u_eml_serial_gate.gate_y_reg[4] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0690_));
 sky130_fd_sc_hd__a211o_2 _2748_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ),
    .A2(net48),
    .B1(net5),
    .C1(_0690_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0691_));
 sky130_fd_sc_hd__o22a_2 _2749_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .A2(net13),
    .B1(_0689_),
    .B2(_0691_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0200_));
 sky130_fd_sc_hd__o211a_2 _2750_ (.A1(_0661_),
    .A2(_0667_),
    .B1(net58),
    .C1(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0692_));
 sky130_fd_sc_hd__a21boi_2 _2751_ (.A1(_0627_),
    .A2(_0639_),
    .B1_N(_0692_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0693_));
 sky130_fd_sc_hd__a221o_2 _2752_ (.A1(\u_eml_serial_gate.gate_y_reg[5] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0694_));
 sky130_fd_sc_hd__a211o_2 _2753_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ),
    .A2(net48),
    .B1(net5),
    .C1(_0694_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0695_));
 sky130_fd_sc_hd__o22a_2 _2754_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .A2(net13),
    .B1(_0693_),
    .B2(_0695_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0201_));
 sky130_fd_sc_hd__nand2_2 _2755_ (.A(_0623_),
    .B(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0696_));
 sky130_fd_sc_hd__xor2_2 _2756_ (.A(_0641_),
    .B(_0696_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0697_));
 sky130_fd_sc_hd__nor2_2 _2757_ (.A(net6),
    .B(_0697_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0698_));
 sky130_fd_sc_hd__a221o_2 _2758_ (.A1(\u_eml_serial_gate.gate_y_reg[6] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0699_));
 sky130_fd_sc_hd__a211o_2 _2759_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ),
    .A2(net48),
    .B1(net5),
    .C1(_0699_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0700_));
 sky130_fd_sc_hd__o22a_2 _2760_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .A2(net13),
    .B1(_0698_),
    .B2(_0700_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0202_));
 sky130_fd_sc_hd__o21ai_2 _2761_ (.A1(_0620_),
    .A2(_0621_),
    .B1(_0643_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0701_));
 sky130_fd_sc_hd__and3b_2 _2762_ (.A_N(net6),
    .B(_0701_),
    .C(_0644_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0702_));
 sky130_fd_sc_hd__a221o_2 _2763_ (.A1(\u_eml_serial_gate.gate_y_reg[7] ),
    .A2(net44),
    .B1(net56),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0703_));
 sky130_fd_sc_hd__a211o_2 _2764_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ),
    .A2(net48),
    .B1(net5),
    .C1(_0703_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0704_));
 sky130_fd_sc_hd__o22a_2 _2765_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .A2(net13),
    .B1(_0702_),
    .B2(_0704_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0203_));
 sky130_fd_sc_hd__and3_2 _2766_ (.A(_0616_),
    .B(_0618_),
    .C(_0645_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0705_));
 sky130_fd_sc_hd__a21oi_2 _2767_ (.A1(_0616_),
    .A2(_0618_),
    .B1(_0645_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0706_));
 sky130_fd_sc_hd__nor3_2 _2768_ (.A(net6),
    .B(_0705_),
    .C(_0706_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0707_));
 sky130_fd_sc_hd__a221o_2 _2769_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ),
    .A2(net49),
    .B1(net57),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0708_));
 sky130_fd_sc_hd__a211o_2 _2770_ (.A1(\u_eml_serial_gate.gate_y_reg[8] ),
    .A2(net44),
    .B1(net5),
    .C1(_0708_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0709_));
 sky130_fd_sc_hd__o22a_2 _2771_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .A2(net13),
    .B1(_0707_),
    .B2(_0709_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0204_));
 sky130_fd_sc_hd__and3_2 _2772_ (.A(_0614_),
    .B(_0616_),
    .C(_0646_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0710_));
 sky130_fd_sc_hd__nor3_2 _2773_ (.A(_0647_),
    .B(net6),
    .C(_0710_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0711_));
 sky130_fd_sc_hd__a221o_2 _2774_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ),
    .A2(net49),
    .B1(net57),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .C1(net11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0712_));
 sky130_fd_sc_hd__a211o_2 _2775_ (.A1(\u_eml_serial_gate.gate_y_reg[9] ),
    .A2(net44),
    .B1(net5),
    .C1(_0712_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0713_));
 sky130_fd_sc_hd__o22a_2 _2776_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .A2(net13),
    .B1(_0711_),
    .B2(_0713_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0205_));
 sky130_fd_sc_hd__xor2_2 _2777_ (.A(_0649_),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0714_));
 sky130_fd_sc_hd__nor2_2 _2778_ (.A(net6),
    .B(_0714_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0715_));
 sky130_fd_sc_hd__a221o_2 _2779_ (.A1(\u_eml_serial_gate.gate_y_reg[10] ),
    .A2(net45),
    .B1(net57),
    .B2(net143),
    .C1(net12),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0716_));
 sky130_fd_sc_hd__a211o_2 _2780_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ),
    .A2(net49),
    .B1(net5),
    .C1(_0716_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0717_));
 sky130_fd_sc_hd__o22a_2 _2781_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .A2(net14),
    .B1(_0715_),
    .B2(_0717_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0206_));
 sky130_fd_sc_hd__a21oi_2 _2782_ (.A1(_0610_),
    .A2(_0611_),
    .B1(_0652_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0718_));
 sky130_fd_sc_hd__and3_2 _2783_ (.A(_0610_),
    .B(_0611_),
    .C(_0652_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0719_));
 sky130_fd_sc_hd__nor3_2 _2784_ (.A(_0668_),
    .B(_0718_),
    .C(_0719_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0720_));
 sky130_fd_sc_hd__a221o_2 _2785_ (.A1(\u_eml_serial_gate.gate_y_reg[11] ),
    .A2(net45),
    .B1(net57),
    .B2(net142),
    .C1(net12),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0721_));
 sky130_fd_sc_hd__a211o_2 _2786_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ),
    .A2(net49),
    .B1(_0676_),
    .C1(_0721_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0722_));
 sky130_fd_sc_hd__o22a_2 _2787_ (.A1(net143),
    .A2(net14),
    .B1(_0720_),
    .B2(_0722_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0207_));
 sky130_fd_sc_hd__a21bo_2 _2788_ (.A1(_0610_),
    .A2(_0652_),
    .B1_N(_0611_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0723_));
 sky130_fd_sc_hd__and3_2 _2789_ (.A(_0607_),
    .B(_0609_),
    .C(_0723_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0724_));
 sky130_fd_sc_hd__a21oi_2 _2790_ (.A1(_0607_),
    .A2(_0609_),
    .B1(_0723_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0725_));
 sky130_fd_sc_hd__nor3_2 _2791_ (.A(_0668_),
    .B(_0724_),
    .C(_0725_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0726_));
 sky130_fd_sc_hd__a221o_2 _2792_ (.A1(net143),
    .A2(net49),
    .B1(net57),
    .B2(net141),
    .C1(net12),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0727_));
 sky130_fd_sc_hd__a211o_2 _2793_ (.A1(\u_eml_serial_gate.gate_y_reg[12] ),
    .A2(net45),
    .B1(_0676_),
    .C1(_0727_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0728_));
 sky130_fd_sc_hd__o22a_2 _2794_ (.A1(net142),
    .A2(net14),
    .B1(_0726_),
    .B2(_0728_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0208_));
 sky130_fd_sc_hd__nand2_2 _2795_ (.A(_0605_),
    .B(_0655_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0729_));
 sky130_fd_sc_hd__and3b_2 _2796_ (.A_N(_0668_),
    .B(_0729_),
    .C(_0656_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0730_));
 sky130_fd_sc_hd__a221o_2 _2797_ (.A1(net142),
    .A2(net49),
    .B1(net57),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .C1(net12),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0731_));
 sky130_fd_sc_hd__a211o_2 _2798_ (.A1(\u_eml_serial_gate.gate_y_reg[13] ),
    .A2(net45),
    .B1(_0676_),
    .C1(_0731_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0732_));
 sky130_fd_sc_hd__o22a_2 _2799_ (.A1(net141),
    .A2(net14),
    .B1(_0730_),
    .B2(_0732_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0209_));
 sky130_fd_sc_hd__and3_2 _2800_ (.A(_0603_),
    .B(_0656_),
    .C(_0658_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0733_));
 sky130_fd_sc_hd__a21oi_2 _2801_ (.A1(_0603_),
    .A2(_0656_),
    .B1(_0658_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0734_));
 sky130_fd_sc_hd__o21ba_2 _2802_ (.A1(_0733_),
    .A2(_0734_),
    .B1_N(_0668_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0735_));
 sky130_fd_sc_hd__a221o_2 _2803_ (.A1(net141),
    .A2(net49),
    .B1(net45),
    .B2(\u_eml_serial_gate.gate_y_reg[14] ),
    .C1(net12),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0736_));
 sky130_fd_sc_hd__o32a_2 _2804_ (.A1(_0676_),
    .A2(_0735_),
    .A3(_0736_),
    .B1(net14),
    .B2(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0210_));
 sky130_fd_sc_hd__nor2_2 _2805_ (.A(net91),
    .B(_0594_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0737_));
 sky130_fd_sc_hd__a211oi_2 _2806_ (.A1(_1718_),
    .A2(_0737_),
    .B1(_0587_),
    .C1(_0584_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0738_));
 sky130_fd_sc_hd__and2b_2 _2807_ (.A_N(net28),
    .B(_0738_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0739_));
 sky130_fd_sc_hd__nand2_2 _2808_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0740_));
 sky130_fd_sc_hd__or2_2 _2809_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0741_));
 sky130_fd_sc_hd__nand2_2 _2810_ (.A(_0740_),
    .B(_0741_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0742_));
 sky130_fd_sc_hd__nor2_2 _2811_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0743_));
 sky130_fd_sc_hd__nand2_2 _2812_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0744_));
 sky130_fd_sc_hd__xor2_2 _2813_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0745_));
 sky130_fd_sc_hd__nor2_2 _2814_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0746_));
 sky130_fd_sc_hd__or2_2 _2815_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0747_));
 sky130_fd_sc_hd__nor2_2 _2816_ (.A(_1693_),
    .B(_1702_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0748_));
 sky130_fd_sc_hd__nor2_2 _2817_ (.A(_1694_),
    .B(_1701_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0749_));
 sky130_fd_sc_hd__nor2_2 _2818_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0750_));
 sky130_fd_sc_hd__nor2_2 _2819_ (.A(_0749_),
    .B(_0750_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0751_));
 sky130_fd_sc_hd__nor2_2 _2820_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0752_));
 sky130_fd_sc_hd__inv_2 _2821_ (.A(_0752_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0753_));
 sky130_fd_sc_hd__nor2_2 _2822_ (.A(_1691_),
    .B(_1700_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0754_));
 sky130_fd_sc_hd__nor2_2 _2823_ (.A(_1692_),
    .B(_1699_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0755_));
 sky130_fd_sc_hd__nand2_2 _2824_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0756_));
 sky130_fd_sc_hd__or2_2 _2825_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0757_));
 sky130_fd_sc_hd__nand2_2 _2826_ (.A(_0756_),
    .B(_0757_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0758_));
 sky130_fd_sc_hd__nand2_2 _2827_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0759_));
 sky130_fd_sc_hd__or2_2 _2828_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0760_));
 sky130_fd_sc_hd__nand2_2 _2829_ (.A(_0759_),
    .B(_0760_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0761_));
 sky130_fd_sc_hd__nand2_2 _2830_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0762_));
 sky130_fd_sc_hd__or2_2 _2831_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0763_));
 sky130_fd_sc_hd__nand2_2 _2832_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0764_));
 sky130_fd_sc_hd__or2_2 _2833_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0765_));
 sky130_fd_sc_hd__nand2_2 _2834_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0766_));
 sky130_fd_sc_hd__or2_2 _2835_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0767_));
 sky130_fd_sc_hd__nand2_2 _2836_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0768_));
 sky130_fd_sc_hd__or2_2 _2837_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0769_));
 sky130_fd_sc_hd__and2_2 _2838_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0770_));
 sky130_fd_sc_hd__xor2_2 _2839_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0771_));
 sky130_fd_sc_hd__nand2_2 _2840_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0772_));
 sky130_fd_sc_hd__and3_2 _2841_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .C(_0771_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0773_));
 sky130_fd_sc_hd__a31o_2 _2842_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .A3(_0771_),
    .B1(_0770_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0774_));
 sky130_fd_sc_hd__and3_2 _2843_ (.A(_0768_),
    .B(_0769_),
    .C(_0774_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0775_));
 sky130_fd_sc_hd__a21bo_2 _2844_ (.A1(_0769_),
    .A2(_0774_),
    .B1_N(_0768_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0776_));
 sky130_fd_sc_hd__and3_2 _2845_ (.A(_0766_),
    .B(_0767_),
    .C(_0776_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0777_));
 sky130_fd_sc_hd__a21bo_2 _2846_ (.A1(_0767_),
    .A2(_0776_),
    .B1_N(_0766_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0778_));
 sky130_fd_sc_hd__and3_2 _2847_ (.A(_0764_),
    .B(_0765_),
    .C(_0778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0779_));
 sky130_fd_sc_hd__a21bo_2 _2848_ (.A1(_0765_),
    .A2(_0778_),
    .B1_N(_0764_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0780_));
 sky130_fd_sc_hd__and3_2 _2849_ (.A(_0762_),
    .B(_0763_),
    .C(_0780_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0781_));
 sky130_fd_sc_hd__a21bo_2 _2850_ (.A1(_0763_),
    .A2(_0780_),
    .B1_N(_0762_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0782_));
 sky130_fd_sc_hd__a21bo_2 _2851_ (.A1(_0760_),
    .A2(_0782_),
    .B1_N(_0759_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0783_));
 sky130_fd_sc_hd__a21bo_2 _2852_ (.A1(_0757_),
    .A2(_0783_),
    .B1_N(_0756_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0784_));
 sky130_fd_sc_hd__nor2_2 _2853_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[8] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0785_));
 sky130_fd_sc_hd__nor2_2 _2854_ (.A(_0755_),
    .B(_0785_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0786_));
 sky130_fd_sc_hd__a21o_2 _2855_ (.A1(_0784_),
    .A2(_0786_),
    .B1(_0755_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0787_));
 sky130_fd_sc_hd__a211o_2 _2856_ (.A1(_0784_),
    .A2(_0786_),
    .B1(_0754_),
    .C1(_0755_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0788_));
 sky130_fd_sc_hd__nand2_2 _2857_ (.A(_0753_),
    .B(_0788_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0789_));
 sky130_fd_sc_hd__a31o_2 _2858_ (.A1(_0751_),
    .A2(_0753_),
    .A3(_0788_),
    .B1(_0749_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0790_));
 sky130_fd_sc_hd__a311o_2 _2859_ (.A1(_0751_),
    .A2(_0753_),
    .A3(_0788_),
    .B1(_0749_),
    .C1(_0748_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0791_));
 sky130_fd_sc_hd__nand2_2 _2860_ (.A(_0747_),
    .B(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0792_));
 sky130_fd_sc_hd__and3_2 _2861_ (.A(_0745_),
    .B(_0747_),
    .C(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0793_));
 sky130_fd_sc_hd__a21oi_2 _2862_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .B1(_0793_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0794_));
 sky130_fd_sc_hd__o21a_2 _2863_ (.A1(_0743_),
    .A2(_0794_),
    .B1(_0744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0795_));
 sky130_fd_sc_hd__o21a_2 _2864_ (.A1(_0742_),
    .A2(_0795_),
    .B1(_0740_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0796_));
 sky130_fd_sc_hd__nand2_2 _2865_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .B(net133),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0797_));
 sky130_fd_sc_hd__or2_2 _2866_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .B(net133),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0798_));
 sky130_fd_sc_hd__nand2_2 _2867_ (.A(_0797_),
    .B(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0799_));
 sky130_fd_sc_hd__nor2_2 _2868_ (.A(_0796_),
    .B(_0799_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0800_));
 sky130_fd_sc_hd__or3b_2 _2869_ (.A(_0800_),
    .B(_0581_),
    .C_N(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0801_));
 sky130_fd_sc_hd__nor2_2 _2870_ (.A(_0574_),
    .B(_0576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0802_));
 sky130_fd_sc_hd__a211o_2 _2871_ (.A1(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ),
    .A2(_1677_),
    .B1(_0514_),
    .C1(_0802_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0803_));
 sky130_fd_sc_hd__a221o_2 _2872_ (.A1(net140),
    .A2(_0346_),
    .B1(net91),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ),
    .C1(_0737_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0804_));
 sky130_fd_sc_hd__and3b_2 _2873_ (.A_N(_0804_),
    .B(_0803_),
    .C(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0805_));
 sky130_fd_sc_hd__a21oi_2 _2874_ (.A1(\u_eml_serial_gate.gate_func_reg[0] ),
    .A2(_0737_),
    .B1(_0805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0806_));
 sky130_fd_sc_hd__mux2_1 _2875_ (.A0(net140),
    .A1(_0806_),
    .S(_0739_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0211_));
 sky130_fd_sc_hd__nand2_2 _2876_ (.A(_1920_),
    .B(_0738_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0807_));
 sky130_fd_sc_hd__nor2_2 _2877_ (.A(_0737_),
    .B(net21),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0808_));
 sky130_fd_sc_hd__nor2_2 _2878_ (.A(_0796_),
    .B(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0809_));
 sky130_fd_sc_hd__or3_2 _2879_ (.A(_0581_),
    .B(_0796_),
    .C(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0810_));
 sky130_fd_sc_hd__o21ai_2 _2880_ (.A1(_0514_),
    .A2(_0575_),
    .B1(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0811_));
 sky130_fd_sc_hd__a31o_2 _2881_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .A2(net133),
    .A3(_0796_),
    .B1(_0581_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0812_));
 sky130_fd_sc_hd__inv_2 _2882_ (.A(_0812_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0813_));
 sky130_fd_sc_hd__or2_2 _2883_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0814_));
 sky130_fd_sc_hd__a31o_2 _2884_ (.A1(_0772_),
    .A2(_0813_),
    .A3(_0814_),
    .B1(net7),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0815_));
 sky130_fd_sc_hd__nand2b_2 _2885_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ),
    .B(\u_eml_serial_gate.gate_result[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0816_));
 sky130_fd_sc_hd__a21oi_2 _2886_ (.A1(_0550_),
    .A2(_0816_),
    .B1(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0817_));
 sky130_fd_sc_hd__and2_2 _2887_ (.A(_1677_),
    .B(\u_eml_serial_gate.gate_result[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0818_));
 sky130_fd_sc_hd__a221o_2 _2888_ (.A1(_0393_),
    .A2(net90),
    .B1(net88),
    .B2(_0346_),
    .C1(_0817_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0819_));
 sky130_fd_sc_hd__a211o_2 _2889_ (.A1(\u_eml_serial_gate.gate_result[1] ),
    .A2(net28),
    .B1(_0815_),
    .C1(_0819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0820_));
 sky130_fd_sc_hd__a22o_2 _2890_ (.A1(\u_eml_serial_gate.gate_result[0] ),
    .A2(net21),
    .B1(net9),
    .B2(_0820_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0212_));
 sky130_fd_sc_hd__o21a_2 _2891_ (.A1(_1677_),
    .A2(\u_eml_serial_gate.gate_result[14] ),
    .B1(_0346_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0821_));
 sky130_fd_sc_hd__o21a_2 _2892_ (.A1(\u_eml_serial_gate.gate_result[0] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0822_));
 sky130_fd_sc_hd__a221o_2 _2893_ (.A1(\u_eml_serial_gate.gate_result[2] ),
    .A2(net28),
    .B1(_0396_),
    .B2(net90),
    .C1(_0822_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0823_));
 sky130_fd_sc_hd__a21oi_2 _2894_ (.A1(_0549_),
    .A2(_0551_),
    .B1(_0550_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0824_));
 sky130_fd_sc_hd__or3_2 _2895_ (.A(_0552_),
    .B(_0578_),
    .C(_0824_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0825_));
 sky130_fd_sc_hd__and2b_2 _2896_ (.A_N(_0771_),
    .B(_0772_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0826_));
 sky130_fd_sc_hd__o31a_2 _2897_ (.A1(_0773_),
    .A2(_0812_),
    .A3(_0826_),
    .B1(_0825_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0827_));
 sky130_fd_sc_hd__or3b_2 _2898_ (.A(net7),
    .B(_0823_),
    .C_N(_0827_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0828_));
 sky130_fd_sc_hd__a22o_2 _2899_ (.A1(\u_eml_serial_gate.gate_result[1] ),
    .A2(net21),
    .B1(net9),
    .B2(_0828_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0213_));
 sky130_fd_sc_hd__o21a_2 _2900_ (.A1(\u_eml_serial_gate.gate_result[1] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0829_));
 sky130_fd_sc_hd__a221o_2 _2901_ (.A1(\u_eml_serial_gate.gate_result[3] ),
    .A2(net28),
    .B1(_0404_),
    .B2(net90),
    .C1(_0829_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0830_));
 sky130_fd_sc_hd__a21o_2 _2902_ (.A1(_0768_),
    .A2(_0769_),
    .B1(_0774_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0831_));
 sky130_fd_sc_hd__or3b_2 _2903_ (.A(_0775_),
    .B(_0812_),
    .C_N(_0831_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0832_));
 sky130_fd_sc_hd__a21o_2 _2904_ (.A1(_0547_),
    .A2(_0548_),
    .B1(_0553_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0833_));
 sky130_fd_sc_hd__and3b_2 _2905_ (.A_N(_0554_),
    .B(net8),
    .C(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0834_));
 sky130_fd_sc_hd__or4b_2 _2906_ (.A(net7),
    .B(_0834_),
    .C(_0830_),
    .D_N(_0832_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0835_));
 sky130_fd_sc_hd__a22o_2 _2907_ (.A1(\u_eml_serial_gate.gate_result[2] ),
    .A2(net21),
    .B1(net9),
    .B2(_0835_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0214_));
 sky130_fd_sc_hd__o21a_2 _2908_ (.A1(\u_eml_serial_gate.gate_result[2] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0836_));
 sky130_fd_sc_hd__a221o_2 _2909_ (.A1(\u_eml_serial_gate.gate_result[4] ),
    .A2(net28),
    .B1(_0409_),
    .B2(net90),
    .C1(_0836_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0837_));
 sky130_fd_sc_hd__a21o_2 _2910_ (.A1(_0766_),
    .A2(_0767_),
    .B1(_0776_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0838_));
 sky130_fd_sc_hd__or3b_2 _2911_ (.A(_0777_),
    .B(_0812_),
    .C_N(_0838_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0839_));
 sky130_fd_sc_hd__a21o_2 _2912_ (.A1(_0545_),
    .A2(_0546_),
    .B1(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0840_));
 sky130_fd_sc_hd__and3b_2 _2913_ (.A_N(_0556_),
    .B(net8),
    .C(_0840_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0841_));
 sky130_fd_sc_hd__or4b_2 _2914_ (.A(net7),
    .B(_0841_),
    .C(_0837_),
    .D_N(_0839_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0842_));
 sky130_fd_sc_hd__a22o_2 _2915_ (.A1(\u_eml_serial_gate.gate_result[3] ),
    .A2(net21),
    .B1(net9),
    .B2(_0842_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0215_));
 sky130_fd_sc_hd__o21a_2 _2916_ (.A1(\u_eml_serial_gate.gate_result[3] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0843_));
 sky130_fd_sc_hd__a221o_2 _2917_ (.A1(\u_eml_serial_gate.gate_result[5] ),
    .A2(net28),
    .B1(_0415_),
    .B2(net90),
    .C1(_0843_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0844_));
 sky130_fd_sc_hd__a21o_2 _2918_ (.A1(_0764_),
    .A2(_0765_),
    .B1(_0778_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0845_));
 sky130_fd_sc_hd__or3b_2 _2919_ (.A(_0779_),
    .B(_0812_),
    .C_N(_0845_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0846_));
 sky130_fd_sc_hd__a21o_2 _2920_ (.A1(_0543_),
    .A2(_0544_),
    .B1(_0557_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0847_));
 sky130_fd_sc_hd__and3b_2 _2921_ (.A_N(_0558_),
    .B(net8),
    .C(_0847_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0848_));
 sky130_fd_sc_hd__or4b_2 _2922_ (.A(net7),
    .B(_0848_),
    .C(_0844_),
    .D_N(_0846_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0849_));
 sky130_fd_sc_hd__a22o_2 _2923_ (.A1(\u_eml_serial_gate.gate_result[4] ),
    .A2(net21),
    .B1(net9),
    .B2(_0849_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0216_));
 sky130_fd_sc_hd__a21o_2 _2924_ (.A1(_0762_),
    .A2(_0763_),
    .B1(_0780_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0850_));
 sky130_fd_sc_hd__or3b_2 _2925_ (.A(_0781_),
    .B(_0812_),
    .C_N(_0850_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0851_));
 sky130_fd_sc_hd__a21o_2 _2926_ (.A1(_0541_),
    .A2(_0542_),
    .B1(_0559_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0852_));
 sky130_fd_sc_hd__and3b_2 _2927_ (.A_N(_0560_),
    .B(net8),
    .C(_0852_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0853_));
 sky130_fd_sc_hd__o21a_2 _2928_ (.A1(\u_eml_serial_gate.gate_result[4] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0854_));
 sky130_fd_sc_hd__a221o_2 _2929_ (.A1(\u_eml_serial_gate.gate_result[6] ),
    .A2(net28),
    .B1(_0421_),
    .B2(net90),
    .C1(_0854_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0855_));
 sky130_fd_sc_hd__or4b_2 _2930_ (.A(net7),
    .B(_0855_),
    .C(_0853_),
    .D_N(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0856_));
 sky130_fd_sc_hd__a22o_2 _2931_ (.A1(\u_eml_serial_gate.gate_result[5] ),
    .A2(net21),
    .B1(net9),
    .B2(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0217_));
 sky130_fd_sc_hd__a21o_2 _2932_ (.A1(_0539_),
    .A2(_0540_),
    .B1(_0561_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0857_));
 sky130_fd_sc_hd__xnor2_2 _2933_ (.A(_0761_),
    .B(_0782_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0858_));
 sky130_fd_sc_hd__a32o_2 _2934_ (.A1(_0562_),
    .A2(net8),
    .A3(_0857_),
    .B1(_0858_),
    .B2(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0859_));
 sky130_fd_sc_hd__o21a_2 _2935_ (.A1(\u_eml_serial_gate.gate_result[5] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0860_));
 sky130_fd_sc_hd__a221o_2 _2936_ (.A1(\u_eml_serial_gate.gate_result[7] ),
    .A2(net28),
    .B1(_0427_),
    .B2(net90),
    .C1(_0860_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0861_));
 sky130_fd_sc_hd__or3_2 _2937_ (.A(net7),
    .B(_0859_),
    .C(_0861_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0862_));
 sky130_fd_sc_hd__a22o_2 _2938_ (.A1(\u_eml_serial_gate.gate_result[6] ),
    .A2(net21),
    .B1(net9),
    .B2(_0862_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0218_));
 sky130_fd_sc_hd__o21a_2 _2939_ (.A1(\u_eml_serial_gate.gate_result[6] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0863_));
 sky130_fd_sc_hd__a221o_2 _2940_ (.A1(\u_eml_serial_gate.gate_result[8] ),
    .A2(net28),
    .B1(_0432_),
    .B2(net90),
    .C1(_0863_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0864_));
 sky130_fd_sc_hd__xor2_2 _2941_ (.A(_0758_),
    .B(_0783_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0865_));
 sky130_fd_sc_hd__xor2_2 _2942_ (.A(_0538_),
    .B(_0563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0866_));
 sky130_fd_sc_hd__o22a_2 _2943_ (.A1(_0812_),
    .A2(_0865_),
    .B1(_0866_),
    .B2(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0867_));
 sky130_fd_sc_hd__or3b_2 _2944_ (.A(net7),
    .B(_0864_),
    .C_N(_0867_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0868_));
 sky130_fd_sc_hd__a22o_2 _2945_ (.A1(\u_eml_serial_gate.gate_result[7] ),
    .A2(net21),
    .B1(net9),
    .B2(_0868_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0219_));
 sky130_fd_sc_hd__o21a_2 _2946_ (.A1(\u_eml_serial_gate.gate_result[7] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0869_));
 sky130_fd_sc_hd__a221o_2 _2947_ (.A1(\u_eml_serial_gate.gate_result[9] ),
    .A2(net29),
    .B1(_0437_),
    .B2(net90),
    .C1(_0869_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0870_));
 sky130_fd_sc_hd__xor2_2 _2948_ (.A(_0784_),
    .B(_0786_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0871_));
 sky130_fd_sc_hd__a21o_2 _2949_ (.A1(_0534_),
    .A2(_0565_),
    .B1(_0564_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0872_));
 sky130_fd_sc_hd__a32o_2 _2950_ (.A1(_0566_),
    .A2(net8),
    .A3(_0872_),
    .B1(_0871_),
    .B2(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0873_));
 sky130_fd_sc_hd__or3_2 _2951_ (.A(net7),
    .B(_0870_),
    .C(_0873_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0874_));
 sky130_fd_sc_hd__a22o_2 _2952_ (.A1(\u_eml_serial_gate.gate_result[8] ),
    .A2(net21),
    .B1(net9),
    .B2(_0874_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0220_));
 sky130_fd_sc_hd__o21a_2 _2953_ (.A1(\u_eml_serial_gate.gate_result[8] ),
    .A2(net88),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0875_));
 sky130_fd_sc_hd__a221o_2 _2954_ (.A1(\u_eml_serial_gate.gate_result[10] ),
    .A2(net29),
    .B1(_0443_),
    .B2(net90),
    .C1(_0875_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0876_));
 sky130_fd_sc_hd__and3_2 _2955_ (.A(_0531_),
    .B(_0533_),
    .C(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0877_));
 sky130_fd_sc_hd__a21oi_2 _2956_ (.A1(_0531_),
    .A2(_0533_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0878_));
 sky130_fd_sc_hd__nor2_2 _2957_ (.A(_0752_),
    .B(_0754_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0879_));
 sky130_fd_sc_hd__xnor2_2 _2958_ (.A(_0787_),
    .B(_0879_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0880_));
 sky130_fd_sc_hd__o32ai_2 _2959_ (.A1(_0578_),
    .A2(_0877_),
    .A3(_0878_),
    .B1(_0880_),
    .B2(_0812_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0881_));
 sky130_fd_sc_hd__or3_2 _2960_ (.A(net7),
    .B(_0876_),
    .C(_0881_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0882_));
 sky130_fd_sc_hd__a22o_2 _2961_ (.A1(\u_eml_serial_gate.gate_result[9] ),
    .A2(net22),
    .B1(net9),
    .B2(_0882_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0221_));
 sky130_fd_sc_hd__o21a_2 _2962_ (.A1(\u_eml_serial_gate.gate_result[9] ),
    .A2(net89),
    .B1(net20),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0883_));
 sky130_fd_sc_hd__a221o_2 _2963_ (.A1(\u_eml_serial_gate.gate_result[11] ),
    .A2(net29),
    .B1(_0449_),
    .B2(net91),
    .C1(_0883_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0884_));
 sky130_fd_sc_hd__a21oi_2 _2964_ (.A1(_0531_),
    .A2(_0568_),
    .B1(_0530_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0885_));
 sky130_fd_sc_hd__nor2_2 _2965_ (.A(_0569_),
    .B(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0886_));
 sky130_fd_sc_hd__xnor2_2 _2966_ (.A(_0751_),
    .B(_0789_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0887_));
 sky130_fd_sc_hd__a22o_2 _2967_ (.A1(net8),
    .A2(_0886_),
    .B1(_0887_),
    .B2(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0888_));
 sky130_fd_sc_hd__or3_2 _2968_ (.A(_0811_),
    .B(_0884_),
    .C(_0888_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0889_));
 sky130_fd_sc_hd__a22o_2 _2969_ (.A1(\u_eml_serial_gate.gate_result[10] ),
    .A2(net22),
    .B1(net10),
    .B2(_0889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0222_));
 sky130_fd_sc_hd__nor2_2 _2970_ (.A(_0525_),
    .B(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0890_));
 sky130_fd_sc_hd__xnor2_2 _2971_ (.A(_0570_),
    .B(_0890_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0891_));
 sky130_fd_sc_hd__a21oi_2 _2972_ (.A1(_0575_),
    .A2(_0891_),
    .B1(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0892_));
 sky130_fd_sc_hd__nor2_2 _2973_ (.A(_0746_),
    .B(_0748_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0893_));
 sky130_fd_sc_hd__xnor2_2 _2974_ (.A(_0790_),
    .B(_0893_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0894_));
 sky130_fd_sc_hd__nor2_2 _2975_ (.A(_0812_),
    .B(_0894_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0895_));
 sky130_fd_sc_hd__o21a_2 _2976_ (.A1(\u_eml_serial_gate.gate_result[10] ),
    .A2(net89),
    .B1(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0896_));
 sky130_fd_sc_hd__a221o_2 _2977_ (.A1(\u_eml_serial_gate.gate_result[12] ),
    .A2(net29),
    .B1(_0455_),
    .B2(net91),
    .C1(_0896_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0897_));
 sky130_fd_sc_hd__or4b_2 _2978_ (.A(_0892_),
    .B(_0897_),
    .C(_0895_),
    .D_N(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0898_));
 sky130_fd_sc_hd__a22o_2 _2979_ (.A1(\u_eml_serial_gate.gate_result[11] ),
    .A2(net22),
    .B1(net10),
    .B2(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0223_));
 sky130_fd_sc_hd__xnor2_2 _2980_ (.A(_0745_),
    .B(_0792_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0899_));
 sky130_fd_sc_hd__xnor2_2 _2981_ (.A(_0524_),
    .B(_0571_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0900_));
 sky130_fd_sc_hd__nand2_2 _2982_ (.A(_0575_),
    .B(_0900_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0901_));
 sky130_fd_sc_hd__o21a_2 _2983_ (.A1(\u_eml_serial_gate.gate_result[11] ),
    .A2(net89),
    .B1(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0902_));
 sky130_fd_sc_hd__a221o_2 _2984_ (.A1(\u_eml_serial_gate.gate_result[13] ),
    .A2(net29),
    .B1(_0463_),
    .B2(net91),
    .C1(_0902_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0903_));
 sky130_fd_sc_hd__a22o_2 _2985_ (.A1(_0813_),
    .A2(_0899_),
    .B1(_0901_),
    .B2(net8),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0904_));
 sky130_fd_sc_hd__or3b_2 _2986_ (.A(_0903_),
    .B(_0904_),
    .C_N(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0905_));
 sky130_fd_sc_hd__a22o_2 _2987_ (.A1(\u_eml_serial_gate.gate_result[12] ),
    .A2(net22),
    .B1(net10),
    .B2(_0905_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0224_));
 sky130_fd_sc_hd__or2_2 _2988_ (.A(_0520_),
    .B(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0906_));
 sky130_fd_sc_hd__xnor2_2 _2989_ (.A(_0572_),
    .B(_0906_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0907_));
 sky130_fd_sc_hd__o21a_2 _2990_ (.A1(\u_eml_serial_gate.gate_result[12] ),
    .A2(net89),
    .B1(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0908_));
 sky130_fd_sc_hd__a2bb2o_2 _2991_ (.A1_N(_0514_),
    .A2_N(_0575_),
    .B1(net91),
    .B2(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0909_));
 sky130_fd_sc_hd__a211o_2 _2992_ (.A1(\u_eml_serial_gate.gate_result[14] ),
    .A2(net29),
    .B1(_0908_),
    .C1(_0909_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0910_));
 sky130_fd_sc_hd__and2b_2 _2993_ (.A_N(_0743_),
    .B(_0744_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0911_));
 sky130_fd_sc_hd__xnor2_2 _2994_ (.A(_0794_),
    .B(_0911_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0912_));
 sky130_fd_sc_hd__o21a_2 _2995_ (.A1(_0809_),
    .A2(_0912_),
    .B1(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0913_));
 sky130_fd_sc_hd__a211o_2 _2996_ (.A1(net8),
    .A2(_0907_),
    .B1(_0910_),
    .C1(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0914_));
 sky130_fd_sc_hd__a22o_2 _2997_ (.A1(\u_eml_serial_gate.gate_result[13] ),
    .A2(net22),
    .B1(net10),
    .B2(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0225_));
 sky130_fd_sc_hd__xnor2_2 _2998_ (.A(_0742_),
    .B(_0795_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0915_));
 sky130_fd_sc_hd__xnor2_2 _2999_ (.A(_0519_),
    .B(_0573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0916_));
 sky130_fd_sc_hd__a2bb2o_2 _3000_ (.A1_N(_0812_),
    .A2_N(_0915_),
    .B1(_0916_),
    .B2(_0577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0917_));
 sky130_fd_sc_hd__o21a_2 _3001_ (.A1(\u_eml_serial_gate.gate_result[13] ),
    .A2(net89),
    .B1(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0918_));
 sky130_fd_sc_hd__a221o_2 _3002_ (.A1(net140),
    .A2(net29),
    .B1(_0478_),
    .B2(net91),
    .C1(_0918_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0919_));
 sky130_fd_sc_hd__or3_2 _3003_ (.A(_0811_),
    .B(_0917_),
    .C(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0920_));
 sky130_fd_sc_hd__a22o_2 _3004_ (.A1(\u_eml_serial_gate.gate_result[14] ),
    .A2(net22),
    .B1(net10),
    .B2(_0920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0226_));
 sky130_fd_sc_hd__a21o_2 _3005_ (.A1(net212),
    .A2(net35),
    .B1(net32),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0227_));
 sky130_fd_sc_hd__mux2_1 _3006_ (.A0(net117),
    .A1(_1879_),
    .S(net138),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0228_));
 sky130_fd_sc_hd__xor2_2 _3007_ (.A(net138),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0921_));
 sky130_fd_sc_hd__a22o_2 _3008_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .A2(_1879_),
    .B1(_0921_),
    .B2(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0229_));
 sky130_fd_sc_hd__a21o_2 _3009_ (.A1(net138),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .B1(net137),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0922_));
 sky130_fd_sc_hd__a31o_2 _3010_ (.A1(net138),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .A3(net137),
    .B1(net114),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0923_));
 sky130_fd_sc_hd__nand2_2 _3011_ (.A(_0056_),
    .B(_0923_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0924_));
 sky130_fd_sc_hd__o211a_2 _3012_ (.A1(net137),
    .A2(_0056_),
    .B1(_0922_),
    .C1(_0924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0230_));
 sky130_fd_sc_hd__and4b_2 _3013_ (.A_N(net134),
    .B(net137),
    .C(net138),
    .D(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0925_));
 sky130_fd_sc_hd__or4_2 _3014_ (.A(_1682_),
    .B(_1683_),
    .C(net135),
    .D(_1685_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0926_));
 sky130_fd_sc_hd__a22o_2 _3015_ (.A1(net134),
    .A2(_0924_),
    .B1(_0925_),
    .B2(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0231_));
 sky130_fd_sc_hd__and2_2 _3016_ (.A(_1684_),
    .B(_0922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0927_));
 sky130_fd_sc_hd__nand2_2 _3017_ (.A(_1684_),
    .B(_0922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0928_));
 sky130_fd_sc_hd__a21oi_2 _3018_ (.A1(net138),
    .A2(net137),
    .B1(net134),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0929_));
 sky130_fd_sc_hd__and3b_2 _3019_ (.A_N(net137),
    .B(net134),
    .C(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0930_));
 sky130_fd_sc_hd__a211oi_2 _3020_ (.A1(_0921_),
    .A2(_0929_),
    .B1(_0930_),
    .C1(_0925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0931_));
 sky130_fd_sc_hd__a211o_2 _3021_ (.A1(_0921_),
    .A2(_0929_),
    .B1(_0930_),
    .C1(_0925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0932_));
 sky130_fd_sc_hd__xor2_2 _3022_ (.A(net138),
    .B(net137),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0933_));
 sky130_fd_sc_hd__o21a_2 _3023_ (.A1(net134),
    .A2(net109),
    .B1(net113),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0934_));
 sky130_fd_sc_hd__o21ai_2 _3024_ (.A1(net134),
    .A2(net109),
    .B1(net113),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0935_));
 sky130_fd_sc_hd__mux2_1 _3025_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0936_));
 sky130_fd_sc_hd__mux2_1 _3026_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0937_));
 sky130_fd_sc_hd__mux2_1 _3027_ (.A0(_0936_),
    .A1(_0937_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0938_));
 sky130_fd_sc_hd__mux2_1 _3028_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0939_));
 sky130_fd_sc_hd__mux2_1 _3029_ (.A0(_1693_),
    .A1(_1694_),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0940_));
 sky130_fd_sc_hd__o211a_2 _3030_ (.A1(net136),
    .A2(net109),
    .B1(net113),
    .C1(_1692_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0941_));
 sky130_fd_sc_hd__a21oi_2 _3031_ (.A1(_1691_),
    .A2(net72),
    .B1(_0941_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0942_));
 sky130_fd_sc_hd__a211o_2 _3032_ (.A1(_1691_),
    .A2(net72),
    .B1(_0941_),
    .C1(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0943_));
 sky130_fd_sc_hd__o21ai_2 _3033_ (.A1(net79),
    .A2(_0940_),
    .B1(_0943_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0944_));
 sky130_fd_sc_hd__o211a_2 _3034_ (.A1(net79),
    .A2(_0940_),
    .B1(_0943_),
    .C1(_0928_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0945_));
 sky130_fd_sc_hd__o21ba_2 _3035_ (.A1(_0928_),
    .A2(_0938_),
    .B1_N(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0946_));
 sky130_fd_sc_hd__or3_2 _3036_ (.A(_1684_),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ),
    .C(_0945_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0947_));
 sky130_fd_sc_hd__mux2_1 _3037_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0948_));
 sky130_fd_sc_hd__nor2_2 _3038_ (.A(net101),
    .B(net86),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0949_));
 sky130_fd_sc_hd__mux2_1 _3039_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0950_));
 sky130_fd_sc_hd__mux2_1 _3040_ (.A0(_0948_),
    .A1(_0950_),
    .S(net79),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0951_));
 sky130_fd_sc_hd__mux2_1 _3041_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0952_));
 sky130_fd_sc_hd__mux2_1 _3042_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ),
    .S(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0953_));
 sky130_fd_sc_hd__mux2_1 _3043_ (.A0(_0952_),
    .A1(_0953_),
    .S(net79),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0954_));
 sky130_fd_sc_hd__a22oi_2 _3044_ (.A1(net50),
    .A2(_0951_),
    .B1(_0954_),
    .B2(net86),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0955_));
 sky130_fd_sc_hd__nand2_2 _3045_ (.A(_0947_),
    .B(_0955_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0956_));
 sky130_fd_sc_hd__and2_2 _3046_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .B(_0956_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0957_));
 sky130_fd_sc_hd__o21ai_2 _3047_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .A2(_0956_),
    .B1(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0958_));
 sky130_fd_sc_hd__nor2_2 _3048_ (.A(_0957_),
    .B(_0958_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0959_));
 sky130_fd_sc_hd__and2_2 _3049_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[0] ),
    .B(net123),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0960_));
 sky130_fd_sc_hd__a211o_2 _3050_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .A2(net95),
    .B1(_0959_),
    .C1(_0960_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_1 _3051_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0961_));
 sky130_fd_sc_hd__mux2_1 _3052_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .A1(_0961_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0962_));
 sky130_fd_sc_hd__mux2_1 _3053_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0963_));
 sky130_fd_sc_hd__mux2_1 _3054_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0964_));
 sky130_fd_sc_hd__mux2_1 _3055_ (.A0(_0963_),
    .A1(_0964_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0965_));
 sky130_fd_sc_hd__mux2_1 _3056_ (.A0(_0962_),
    .A1(_0965_),
    .S(net85),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0966_));
 sky130_fd_sc_hd__mux2_1 _3057_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ),
    .S(net71),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0967_));
 sky130_fd_sc_hd__o211a_2 _3058_ (.A1(net135),
    .A2(net109),
    .B1(net113),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0968_));
 sky130_fd_sc_hd__a211o_2 _3059_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .A2(net71),
    .B1(_0968_),
    .C1(net78),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0969_));
 sky130_fd_sc_hd__o211a_2 _3060_ (.A1(_0931_),
    .A2(_0967_),
    .B1(_0969_),
    .C1(net50),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0970_));
 sky130_fd_sc_hd__o211ai_2 _3061_ (.A1(net136),
    .A2(net109),
    .B1(net113),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0971_));
 sky130_fd_sc_hd__o21ai_2 _3062_ (.A1(_1692_),
    .A2(net76),
    .B1(_0971_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0972_));
 sky130_fd_sc_hd__o211ai_2 _3063_ (.A1(_1692_),
    .A2(_0934_),
    .B1(_0971_),
    .C1(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0973_));
 sky130_fd_sc_hd__mux2_1 _3064_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .S(net71),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0974_));
 sky130_fd_sc_hd__or2_2 _3065_ (.A(net77),
    .B(_0974_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0975_));
 sky130_fd_sc_hd__o211a_2 _3066_ (.A1(net77),
    .A2(_0974_),
    .B1(_0973_),
    .C1(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0976_));
 sky130_fd_sc_hd__a311o_2 _3067_ (.A1(net136),
    .A2(_1685_),
    .A3(_0965_),
    .B1(_0970_),
    .C1(_0976_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0977_));
 sky130_fd_sc_hd__mux2_1 _3068_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .A1(_1696_),
    .S(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.is_vector ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0978_));
 sky130_fd_sc_hd__mux2_1 _3069_ (.A0(_1697_),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .S(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.is_vector ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0979_));
 sky130_fd_sc_hd__a21oi_2 _3070_ (.A1(_0947_),
    .A2(_0955_),
    .B1(net67),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0980_));
 sky130_fd_sc_hd__xnor2_2 _3071_ (.A(_0977_),
    .B(_0980_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0981_));
 sky130_fd_sc_hd__and2b_2 _3072_ (.A_N(_0981_),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0982_));
 sky130_fd_sc_hd__xnor2_2 _3073_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .B(_0981_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0983_));
 sky130_fd_sc_hd__nand2_2 _3074_ (.A(_0957_),
    .B(_0983_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0984_));
 sky130_fd_sc_hd__or2_2 _3075_ (.A(_0957_),
    .B(_0983_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0985_));
 sky130_fd_sc_hd__a22o_2 _3076_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[1] ),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0986_));
 sky130_fd_sc_hd__a31o_2 _3077_ (.A1(net117),
    .A2(_0984_),
    .A3(_0985_),
    .B1(_0986_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_1 _3078_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .A1(_0936_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0987_));
 sky130_fd_sc_hd__mux2_1 _3079_ (.A0(_0937_),
    .A1(_0939_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0988_));
 sky130_fd_sc_hd__mux2_1 _3080_ (.A0(_0987_),
    .A1(_0988_),
    .S(net84),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0989_));
 sky130_fd_sc_hd__mux2_1 _3081_ (.A0(_0948_),
    .A1(_0953_),
    .S(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0990_));
 sky130_fd_sc_hd__mux2_1 _3082_ (.A0(_0942_),
    .A1(_0952_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0991_));
 sky130_fd_sc_hd__a22o_2 _3083_ (.A1(net50),
    .A2(_0990_),
    .B1(_0991_),
    .B2(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0992_));
 sky130_fd_sc_hd__a21o_2 _3084_ (.A1(net101),
    .A2(_0989_),
    .B1(_0992_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0993_));
 sky130_fd_sc_hd__nand3b_2 _3085_ (.A_N(_0977_),
    .B(_0947_),
    .C(_0955_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0994_));
 sky130_fd_sc_hd__nand2_2 _3086_ (.A(net70),
    .B(_0994_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0995_));
 sky130_fd_sc_hd__xnor2_2 _3087_ (.A(_0993_),
    .B(_0995_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0996_));
 sky130_fd_sc_hd__and2_2 _3088_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .B(_0996_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0997_));
 sky130_fd_sc_hd__xor2_2 _3089_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .B(_0996_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0998_));
 sky130_fd_sc_hd__a21o_2 _3090_ (.A1(_0957_),
    .A2(_0983_),
    .B1(_0982_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0999_));
 sky130_fd_sc_hd__and2_2 _3091_ (.A(_0998_),
    .B(_0999_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1000_));
 sky130_fd_sc_hd__nor2_2 _3092_ (.A(_0998_),
    .B(_0999_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1001_));
 sky130_fd_sc_hd__nor2_2 _3093_ (.A(_1000_),
    .B(_1001_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1002_));
 sky130_fd_sc_hd__mux2_1 _3094_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[2] ),
    .A1(_1002_),
    .S(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1003_));
 sky130_fd_sc_hd__mux2_1 _3095_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .A1(_1003_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0234_));
 sky130_fd_sc_hd__nor2_2 _3096_ (.A(_1696_),
    .B(net84),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1004_));
 sky130_fd_sc_hd__mux2_1 _3097_ (.A0(_0961_),
    .A1(_0963_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1005_));
 sky130_fd_sc_hd__a21oi_2 _3098_ (.A1(net84),
    .A2(_1005_),
    .B1(_1004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1006_));
 sky130_fd_sc_hd__mux2_1 _3099_ (.A0(_0967_),
    .A1(_0974_),
    .S(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1007_));
 sky130_fd_sc_hd__mux2_1 _3100_ (.A0(_0964_),
    .A1(_0972_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1008_));
 sky130_fd_sc_hd__a22o_2 _3101_ (.A1(net50),
    .A2(_1007_),
    .B1(_1008_),
    .B2(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1009_));
 sky130_fd_sc_hd__a31o_2 _3102_ (.A1(net136),
    .A2(_1685_),
    .A3(_1005_),
    .B1(_1009_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1010_));
 sky130_fd_sc_hd__o21a_2 _3103_ (.A1(_0993_),
    .A2(_0994_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1011_));
 sky130_fd_sc_hd__xnor2_2 _3104_ (.A(_1010_),
    .B(_1011_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1012_));
 sky130_fd_sc_hd__nand2b_2 _3105_ (.A_N(_1012_),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1013_));
 sky130_fd_sc_hd__xnor2_2 _3106_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .B(_1012_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1014_));
 sky130_fd_sc_hd__o21ai_2 _3107_ (.A1(_0997_),
    .A2(_1000_),
    .B1(_1014_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1015_));
 sky130_fd_sc_hd__o31a_2 _3108_ (.A1(_0997_),
    .A2(_1000_),
    .A3(_1014_),
    .B1(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1016_));
 sky130_fd_sc_hd__and2_2 _3109_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[3] ),
    .B(net124),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1017_));
 sky130_fd_sc_hd__a221o_2 _3110_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .A2(net95),
    .B1(_1015_),
    .B2(_1016_),
    .C1(_1017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0235_));
 sky130_fd_sc_hd__a21oi_2 _3111_ (.A1(net84),
    .A2(_0938_),
    .B1(_1004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1018_));
 sky130_fd_sc_hd__a32o_2 _3112_ (.A1(net136),
    .A2(_1685_),
    .A3(_0938_),
    .B1(net50),
    .B2(_0954_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1019_));
 sky130_fd_sc_hd__a21o_2 _3113_ (.A1(net86),
    .A2(_0944_),
    .B1(_1019_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1020_));
 sky130_fd_sc_hd__o31a_2 _3114_ (.A1(_0993_),
    .A2(_0994_),
    .A3(_1010_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1021_));
 sky130_fd_sc_hd__xnor2_2 _3115_ (.A(_1020_),
    .B(_1021_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1022_));
 sky130_fd_sc_hd__inv_2 _3116_ (.A(_1022_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1023_));
 sky130_fd_sc_hd__xor2_2 _3117_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .B(_1022_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1024_));
 sky130_fd_sc_hd__and3_2 _3118_ (.A(_1013_),
    .B(_1015_),
    .C(_1024_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1025_));
 sky130_fd_sc_hd__a21oi_2 _3119_ (.A1(_1013_),
    .A2(_1015_),
    .B1(_1024_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1026_));
 sky130_fd_sc_hd__nor3_2 _3120_ (.A(net115),
    .B(_1025_),
    .C(_1026_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1027_));
 sky130_fd_sc_hd__a221o_2 _3121_ (.A1(net247),
    .A2(net124),
    .B1(net97),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .C1(_1027_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0236_));
 sky130_fd_sc_hd__a21oi_2 _3122_ (.A1(net84),
    .A2(_0962_),
    .B1(_1004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1028_));
 sky130_fd_sc_hd__a32o_2 _3123_ (.A1(net50),
    .A2(_0973_),
    .A3(_0975_),
    .B1(_0965_),
    .B2(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1029_));
 sky130_fd_sc_hd__a31o_2 _3124_ (.A1(net136),
    .A2(_1685_),
    .A3(_0962_),
    .B1(_1029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1030_));
 sky130_fd_sc_hd__o41ai_4 _3125_ (.A1(_0993_),
    .A2(_0994_),
    .A3(_1010_),
    .A4(_1020_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1031_));
 sky130_fd_sc_hd__xnor2_2 _3126_ (.A(_1030_),
    .B(_1031_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1032_));
 sky130_fd_sc_hd__nand2_2 _3127_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .B(_1032_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1033_));
 sky130_fd_sc_hd__or2_2 _3128_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .B(_1032_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1034_));
 sky130_fd_sc_hd__nand2_2 _3129_ (.A(_1033_),
    .B(_1034_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1035_));
 sky130_fd_sc_hd__a21oi_2 _3130_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .A2(_1023_),
    .B1(_1026_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1036_));
 sky130_fd_sc_hd__xor2_2 _3131_ (.A(_1035_),
    .B(_1036_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1037_));
 sky130_fd_sc_hd__and2_2 _3132_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[5] ),
    .B(net124),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1038_));
 sky130_fd_sc_hd__a221o_2 _3133_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .A2(net97),
    .B1(_1037_),
    .B2(net119),
    .C1(_1038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0237_));
 sky130_fd_sc_hd__a21o_2 _3134_ (.A1(net84),
    .A2(_0987_),
    .B1(_1004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1039_));
 sky130_fd_sc_hd__a22o_2 _3135_ (.A1(net87),
    .A2(_0988_),
    .B1(_0991_),
    .B2(net51),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1040_));
 sky130_fd_sc_hd__a21oi_2 _3136_ (.A1(net101),
    .A2(_1039_),
    .B1(_1040_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1041_));
 sky130_fd_sc_hd__nand2_2 _3137_ (.A(net70),
    .B(_1030_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1042_));
 sky130_fd_sc_hd__a21oi_2 _3138_ (.A1(net19),
    .A2(_1042_),
    .B1(_1041_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1043_));
 sky130_fd_sc_hd__and3_2 _3139_ (.A(net19),
    .B(_1041_),
    .C(_1042_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1044_));
 sky130_fd_sc_hd__nor2_2 _3140_ (.A(_1043_),
    .B(_1044_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1045_));
 sky130_fd_sc_hd__and2_2 _3141_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .B(_1045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1046_));
 sky130_fd_sc_hd__or2_2 _3142_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .B(_1045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1047_));
 sky130_fd_sc_hd__and2b_2 _3143_ (.A_N(_1046_),
    .B(_1047_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1048_));
 sky130_fd_sc_hd__a21bo_2 _3144_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .A2(_1023_),
    .B1_N(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1049_));
 sky130_fd_sc_hd__a211o_2 _3145_ (.A1(_1013_),
    .A2(_1015_),
    .B1(_1024_),
    .C1(_1035_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1050_));
 sky130_fd_sc_hd__nand2_2 _3146_ (.A(_1034_),
    .B(_1049_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1051_));
 sky130_fd_sc_hd__nand2_2 _3147_ (.A(_1050_),
    .B(_1051_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1052_));
 sky130_fd_sc_hd__a21oi_2 _3148_ (.A1(_1048_),
    .A2(_1052_),
    .B1(net115),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1053_));
 sky130_fd_sc_hd__o21a_2 _3149_ (.A1(_1048_),
    .A2(_1052_),
    .B1(_1053_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1054_));
 sky130_fd_sc_hd__a221o_2 _3150_ (.A1(net244),
    .A2(net124),
    .B1(net97),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .C1(_1054_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0238_));
 sky130_fd_sc_hd__nor2_2 _3151_ (.A(_1696_),
    .B(net100),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1055_));
 sky130_fd_sc_hd__nand2_2 _3152_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .B(net102),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1056_));
 sky130_fd_sc_hd__a221oi_2 _3153_ (.A1(net87),
    .A2(_1005_),
    .B1(_1008_),
    .B2(net51),
    .C1(_1055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1057_));
 sky130_fd_sc_hd__or2_2 _3154_ (.A(net69),
    .B(_1041_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1058_));
 sky130_fd_sc_hd__and4_2 _3155_ (.A(net19),
    .B(_1042_),
    .C(_1057_),
    .D(_1058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1059_));
 sky130_fd_sc_hd__a31oi_2 _3156_ (.A1(net19),
    .A2(_1042_),
    .A3(_1058_),
    .B1(_1057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1060_));
 sky130_fd_sc_hd__or2_2 _3157_ (.A(_1059_),
    .B(_1060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1061_));
 sky130_fd_sc_hd__nand2_2 _3158_ (.A(_1698_),
    .B(_1061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1062_));
 sky130_fd_sc_hd__inv_2 _3159_ (.A(_1062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1063_));
 sky130_fd_sc_hd__nor2_2 _3160_ (.A(_1698_),
    .B(_1061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1064_));
 sky130_fd_sc_hd__or2_2 _3161_ (.A(_1063_),
    .B(_1064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1065_));
 sky130_fd_sc_hd__a21oi_2 _3162_ (.A1(_1047_),
    .A2(_1052_),
    .B1(_1046_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1066_));
 sky130_fd_sc_hd__xnor2_2 _3163_ (.A(_1065_),
    .B(_1066_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1067_));
 sky130_fd_sc_hd__nor2_2 _3164_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[7] ),
    .B(net121),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1068_));
 sky130_fd_sc_hd__a211o_2 _3165_ (.A1(net119),
    .A2(_1067_),
    .B1(_1068_),
    .C1(net97),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1069_));
 sky130_fd_sc_hd__o21ai_2 _3166_ (.A1(_1698_),
    .A2(net94),
    .B1(_1069_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0239_));
 sky130_fd_sc_hd__o21ai_2 _3167_ (.A1(_1046_),
    .A2(_1064_),
    .B1(_1062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1070_));
 sky130_fd_sc_hd__a21oi_2 _3168_ (.A1(_1047_),
    .A2(_1062_),
    .B1(_1064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1071_));
 sky130_fd_sc_hd__a31o_2 _3169_ (.A1(_1050_),
    .A2(_1051_),
    .A3(_1070_),
    .B1(_1071_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1072_));
 sky130_fd_sc_hd__a21o_2 _3170_ (.A1(net100),
    .A2(_0946_),
    .B1(_1055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1073_));
 sky130_fd_sc_hd__inv_2 _3171_ (.A(_1073_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1074_));
 sky130_fd_sc_hd__nor2_2 _3172_ (.A(net69),
    .B(_1059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1075_));
 sky130_fd_sc_hd__xnor2_2 _3173_ (.A(_1073_),
    .B(_1075_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1076_));
 sky130_fd_sc_hd__or2_2 _3174_ (.A(_1699_),
    .B(_1076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1077_));
 sky130_fd_sc_hd__nand2_2 _3175_ (.A(_1699_),
    .B(_1076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1078_));
 sky130_fd_sc_hd__nand2_2 _3176_ (.A(_1077_),
    .B(_1078_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1079_));
 sky130_fd_sc_hd__nand2_2 _3177_ (.A(_1072_),
    .B(_1079_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1080_));
 sky130_fd_sc_hd__a311o_2 _3178_ (.A1(_1050_),
    .A2(_1051_),
    .A3(_1070_),
    .B1(_1071_),
    .C1(_1079_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1081_));
 sky130_fd_sc_hd__a22o_2 _3179_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[8] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1082_));
 sky130_fd_sc_hd__a31o_2 _3180_ (.A1(net121),
    .A2(_1080_),
    .A3(_1081_),
    .B1(_1082_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0240_));
 sky130_fd_sc_hd__a21o_2 _3181_ (.A1(net100),
    .A2(_0966_),
    .B1(_1055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1083_));
 sky130_fd_sc_hd__a21oi_2 _3182_ (.A1(_1059_),
    .A2(_1074_),
    .B1(net69),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1084_));
 sky130_fd_sc_hd__xnor2_2 _3183_ (.A(_1083_),
    .B(_1084_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1085_));
 sky130_fd_sc_hd__or2_2 _3184_ (.A(_1700_),
    .B(_1085_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1086_));
 sky130_fd_sc_hd__and2_2 _3185_ (.A(_1700_),
    .B(_1085_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1087_));
 sky130_fd_sc_hd__inv_2 _3186_ (.A(_1087_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1088_));
 sky130_fd_sc_hd__nand2_2 _3187_ (.A(_1086_),
    .B(_1088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1089_));
 sky130_fd_sc_hd__nand3_2 _3188_ (.A(_1077_),
    .B(_1081_),
    .C(_1089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1090_));
 sky130_fd_sc_hd__a21o_2 _3189_ (.A1(_1077_),
    .A2(_1081_),
    .B1(_1089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1091_));
 sky130_fd_sc_hd__a22o_2 _3190_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[9] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1092_));
 sky130_fd_sc_hd__a31o_2 _3191_ (.A1(net121),
    .A2(_1090_),
    .A3(_1091_),
    .B1(_1092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0241_));
 sky130_fd_sc_hd__a21oi_2 _3192_ (.A1(net100),
    .A2(_0989_),
    .B1(_1055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1093_));
 sky130_fd_sc_hd__nor2_2 _3193_ (.A(_1073_),
    .B(_1083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1094_));
 sky130_fd_sc_hd__a21o_2 _3194_ (.A1(_1059_),
    .A2(_1094_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1095_));
 sky130_fd_sc_hd__xnor2_2 _3195_ (.A(_1093_),
    .B(_1095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1096_));
 sky130_fd_sc_hd__nor2_2 _3196_ (.A(_1701_),
    .B(_1096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1097_));
 sky130_fd_sc_hd__nand2_2 _3197_ (.A(_1701_),
    .B(_1096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1098_));
 sky130_fd_sc_hd__and2b_2 _3198_ (.A_N(_1097_),
    .B(_1098_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1099_));
 sky130_fd_sc_hd__and2_2 _3199_ (.A(_1077_),
    .B(_1086_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1100_));
 sky130_fd_sc_hd__a21oi_2 _3200_ (.A1(_1081_),
    .A2(_1100_),
    .B1(_1087_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1101_));
 sky130_fd_sc_hd__o21ai_2 _3201_ (.A1(_1099_),
    .A2(_1101_),
    .B1(net121),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1102_));
 sky130_fd_sc_hd__a21oi_2 _3202_ (.A1(_1099_),
    .A2(_1101_),
    .B1(_1102_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1103_));
 sky130_fd_sc_hd__a221o_2 _3203_ (.A1(net253),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ),
    .C1(_1103_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0242_));
 sky130_fd_sc_hd__or2_2 _3204_ (.A(net102),
    .B(_1006_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1104_));
 sky130_fd_sc_hd__nand2_2 _3205_ (.A(_1056_),
    .B(_1104_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1105_));
 sky130_fd_sc_hd__a31o_2 _3206_ (.A1(_1059_),
    .A2(_1093_),
    .A3(_1094_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1106_));
 sky130_fd_sc_hd__xor2_2 _3207_ (.A(_1105_),
    .B(_1106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1107_));
 sky130_fd_sc_hd__xnor2_2 _3208_ (.A(_1702_),
    .B(_1107_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1108_));
 sky130_fd_sc_hd__a21o_2 _3209_ (.A1(_1099_),
    .A2(_1101_),
    .B1(_1097_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1109_));
 sky130_fd_sc_hd__xnor2_2 _3210_ (.A(_1108_),
    .B(_1109_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1110_));
 sky130_fd_sc_hd__mux2_1 _3211_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[11] ),
    .A1(_1110_),
    .S(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1111_));
 sky130_fd_sc_hd__mux2_1 _3212_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .A1(_1111_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0243_));
 sky130_fd_sc_hd__or3b_2 _3213_ (.A(_1097_),
    .B(_1108_),
    .C_N(_1098_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1112_));
 sky130_fd_sc_hd__or3_2 _3214_ (.A(_1087_),
    .B(_1100_),
    .C(_1112_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1113_));
 sky130_fd_sc_hd__o22a_2 _3215_ (.A1(_1701_),
    .A2(_1096_),
    .B1(_1107_),
    .B2(_1702_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1114_));
 sky130_fd_sc_hd__a21o_2 _3216_ (.A1(_1702_),
    .A2(_1107_),
    .B1(_1114_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1115_));
 sky130_fd_sc_hd__o311a_2 _3217_ (.A1(_1081_),
    .A2(_1089_),
    .A3(_1112_),
    .B1(_1113_),
    .C1(_1115_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1116_));
 sky130_fd_sc_hd__o21ai_2 _3218_ (.A1(net102),
    .A2(_1018_),
    .B1(_1056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1117_));
 sky130_fd_sc_hd__o21ai_2 _3219_ (.A1(net68),
    .A2(_1104_),
    .B1(_1106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1118_));
 sky130_fd_sc_hd__xnor2_2 _3220_ (.A(_1117_),
    .B(_1118_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1119_));
 sky130_fd_sc_hd__or2_2 _3221_ (.A(_1703_),
    .B(_1119_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1120_));
 sky130_fd_sc_hd__nand2_2 _3222_ (.A(_1703_),
    .B(_1119_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1121_));
 sky130_fd_sc_hd__nand2_2 _3223_ (.A(_1120_),
    .B(_1121_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1122_));
 sky130_fd_sc_hd__o21ai_2 _3224_ (.A1(_1116_),
    .A2(_1122_),
    .B1(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1123_));
 sky130_fd_sc_hd__a21oi_2 _3225_ (.A1(_1116_),
    .A2(_1122_),
    .B1(_1123_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1124_));
 sky130_fd_sc_hd__a221o_2 _3226_ (.A1(net240),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .C1(_1124_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0244_));
 sky130_fd_sc_hd__o21ai_2 _3227_ (.A1(_1117_),
    .A2(_1118_),
    .B1(_0978_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1125_));
 sky130_fd_sc_hd__o21ai_2 _3228_ (.A1(net102),
    .A2(_1028_),
    .B1(_1056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1126_));
 sky130_fd_sc_hd__xnor2_2 _3229_ (.A(_1125_),
    .B(_1126_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1127_));
 sky130_fd_sc_hd__and2_2 _3230_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .B(_1127_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1128_));
 sky130_fd_sc_hd__nand2_2 _3231_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .B(_1127_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1129_));
 sky130_fd_sc_hd__nor2_2 _3232_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .B(_1127_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1130_));
 sky130_fd_sc_hd__nor2_2 _3233_ (.A(_1128_),
    .B(_1130_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1131_));
 sky130_fd_sc_hd__o21a_2 _3234_ (.A1(_1116_),
    .A2(_1122_),
    .B1(_1120_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1132_));
 sky130_fd_sc_hd__xnor2_2 _3235_ (.A(_1131_),
    .B(_1132_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1133_));
 sky130_fd_sc_hd__mux2_1 _3236_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[13] ),
    .A1(_1133_),
    .S(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1134_));
 sky130_fd_sc_hd__mux2_1 _3237_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .A1(_1134_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0245_));
 sky130_fd_sc_hd__a21oi_2 _3238_ (.A1(net100),
    .A2(_1039_),
    .B1(_1055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1135_));
 sky130_fd_sc_hd__o31a_2 _3239_ (.A1(net102),
    .A2(net68),
    .A3(_1028_),
    .B1(_1125_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1136_));
 sky130_fd_sc_hd__xor2_2 _3240_ (.A(_1135_),
    .B(_1136_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1137_));
 sky130_fd_sc_hd__nand2_2 _3241_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .B(_1137_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1138_));
 sky130_fd_sc_hd__or2_2 _3242_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .B(_1137_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1139_));
 sky130_fd_sc_hd__nand2_2 _3243_ (.A(_1138_),
    .B(_1139_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1140_));
 sky130_fd_sc_hd__o211a_2 _3244_ (.A1(_1116_),
    .A2(_1122_),
    .B1(_1129_),
    .C1(_1120_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1141_));
 sky130_fd_sc_hd__or3_2 _3245_ (.A(_1130_),
    .B(_1140_),
    .C(_1141_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1142_));
 sky130_fd_sc_hd__o21ai_2 _3246_ (.A1(_1130_),
    .A2(_1141_),
    .B1(_1140_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1143_));
 sky130_fd_sc_hd__a22o_2 _3247_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[14] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1144_));
 sky130_fd_sc_hd__a31o_2 _3248_ (.A1(net120),
    .A2(_1142_),
    .A3(_1143_),
    .B1(_1144_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0246_));
 sky130_fd_sc_hd__a21o_2 _3249_ (.A1(_1135_),
    .A2(_1136_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1145_));
 sky130_fd_sc_hd__xor2_2 _3250_ (.A(_0799_),
    .B(_1145_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1146_));
 sky130_fd_sc_hd__a21oi_2 _3251_ (.A1(_1138_),
    .A2(_1142_),
    .B1(_1146_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1147_));
 sky130_fd_sc_hd__a311o_2 _3252_ (.A1(_1138_),
    .A2(_1142_),
    .A3(_1146_),
    .B1(_1147_),
    .C1(net116),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1148_));
 sky130_fd_sc_hd__a21o_2 _3253_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[15] ),
    .A2(net125),
    .B1(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1149_));
 sky130_fd_sc_hd__a22o_2 _3254_ (.A1(net133),
    .A2(net98),
    .B1(_1148_),
    .B2(_1149_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0247_));
 sky130_fd_sc_hd__mux2_1 _3255_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .A1(net133),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1150_));
 sky130_fd_sc_hd__mux2_1 _3256_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1151_));
 sky130_fd_sc_hd__mux2_1 _3257_ (.A0(_1150_),
    .A1(_1151_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1152_));
 sky130_fd_sc_hd__nor2_2 _3258_ (.A(net84),
    .B(_1152_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1153_));
 sky130_fd_sc_hd__mux2_1 _3259_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1154_));
 sky130_fd_sc_hd__mux2_1 _3260_ (.A0(_1701_),
    .A1(_1702_),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1155_));
 sky130_fd_sc_hd__o211a_2 _3261_ (.A1(net136),
    .A2(net109),
    .B1(net113),
    .C1(_1699_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1156_));
 sky130_fd_sc_hd__o211ai_2 _3262_ (.A1(net136),
    .A2(net109),
    .B1(_1876_),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1157_));
 sky130_fd_sc_hd__a211o_2 _3263_ (.A1(_1700_),
    .A2(net73),
    .B1(_1156_),
    .C1(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1158_));
 sky130_fd_sc_hd__o21ai_2 _3264_ (.A1(net82),
    .A2(_1155_),
    .B1(_1158_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1159_));
 sky130_fd_sc_hd__o211a_2 _3265_ (.A1(net82),
    .A2(_1155_),
    .B1(_1158_),
    .C1(net85),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1160_));
 sky130_fd_sc_hd__or3_2 _3266_ (.A(_1684_),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ),
    .C(_1160_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1161_));
 sky130_fd_sc_hd__o211a_2 _3267_ (.A1(net135),
    .A2(net109),
    .B1(net113),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1162_));
 sky130_fd_sc_hd__a211o_2 _3268_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .A2(net71),
    .B1(_1162_),
    .C1(net79),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1163_));
 sky130_fd_sc_hd__mux2_1 _3269_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .S(net71),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1164_));
 sky130_fd_sc_hd__o211a_2 _3270_ (.A1(net78),
    .A2(_1164_),
    .B1(_1163_),
    .C1(net50),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1165_));
 sky130_fd_sc_hd__mux2_1 _3271_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ),
    .S(net73),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1166_));
 sky130_fd_sc_hd__mux2_1 _3272_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .S(net71),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1167_));
 sky130_fd_sc_hd__mux2_1 _3273_ (.A0(_1166_),
    .A1(_1167_),
    .S(net79),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1168_));
 sky130_fd_sc_hd__a21oi_2 _3274_ (.A1(net86),
    .A2(_1168_),
    .B1(_1165_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1169_));
 sky130_fd_sc_hd__a21o_2 _3275_ (.A1(net86),
    .A2(_1168_),
    .B1(_1165_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1170_));
 sky130_fd_sc_hd__nand2_2 _3276_ (.A(_1161_),
    .B(_1169_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1171_));
 sky130_fd_sc_hd__and2_2 _3277_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .B(_1171_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1172_));
 sky130_fd_sc_hd__xor2_2 _3278_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .B(_1171_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1173_));
 sky130_fd_sc_hd__a221o_2 _3279_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ),
    .A2(net95),
    .B1(_1173_),
    .B2(net117),
    .C1(_0960_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0248_));
 sky130_fd_sc_hd__mux2_1 _3280_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1174_));
 sky130_fd_sc_hd__mux2_1 _3281_ (.A0(net133),
    .A1(_1174_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1175_));
 sky130_fd_sc_hd__mux2_1 _3282_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1176_));
 sky130_fd_sc_hd__mux2_1 _3283_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1177_));
 sky130_fd_sc_hd__mux2_1 _3284_ (.A0(_1176_),
    .A1(_1177_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1178_));
 sky130_fd_sc_hd__mux4_2 _3285_ (.A0(net133),
    .A1(_1174_),
    .A2(_1176_),
    .A3(_1177_),
    .S0(net80),
    .S1(net84),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1179_));
 sky130_fd_sc_hd__mux2_1 _3286_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1180_));
 sky130_fd_sc_hd__o211a_2 _3287_ (.A1(net135),
    .A2(net109),
    .B1(net113),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1181_));
 sky130_fd_sc_hd__a211o_2 _3288_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ),
    .A2(net71),
    .B1(_1181_),
    .C1(net78),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1182_));
 sky130_fd_sc_hd__o211a_2 _3289_ (.A1(net79),
    .A2(_1180_),
    .B1(_1182_),
    .C1(net50),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1183_));
 sky130_fd_sc_hd__o211ai_2 _3290_ (.A1(net136),
    .A2(_0933_),
    .B1(_1876_),
    .C1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1184_));
 sky130_fd_sc_hd__o21ai_2 _3291_ (.A1(_1699_),
    .A2(_0934_),
    .B1(_1184_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1185_));
 sky130_fd_sc_hd__o211ai_2 _3292_ (.A1(_1699_),
    .A2(_0934_),
    .B1(_1184_),
    .C1(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1186_));
 sky130_fd_sc_hd__mux2_1 _3293_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ),
    .S(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1187_));
 sky130_fd_sc_hd__or2_2 _3294_ (.A(net77),
    .B(_1187_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1188_));
 sky130_fd_sc_hd__o211a_2 _3295_ (.A1(net78),
    .A2(_1187_),
    .B1(_1186_),
    .C1(net86),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1189_));
 sky130_fd_sc_hd__a211o_2 _3296_ (.A1(net101),
    .A2(_1179_),
    .B1(_1183_),
    .C1(_1189_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1190_));
 sky130_fd_sc_hd__a21o_2 _3297_ (.A1(_1161_),
    .A2(_1169_),
    .B1(net67),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1191_));
 sky130_fd_sc_hd__xnor2_2 _3298_ (.A(_1190_),
    .B(_1191_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1192_));
 sky130_fd_sc_hd__and2_2 _3299_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .B(_1192_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1193_));
 sky130_fd_sc_hd__xor2_2 _3300_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .B(_1192_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1194_));
 sky130_fd_sc_hd__and2_2 _3301_ (.A(_1172_),
    .B(_1194_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1195_));
 sky130_fd_sc_hd__o21ai_2 _3302_ (.A1(_1172_),
    .A2(_1194_),
    .B1(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1196_));
 sky130_fd_sc_hd__nor2_2 _3303_ (.A(_1195_),
    .B(_1196_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1197_));
 sky130_fd_sc_hd__a221o_2 _3304_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[1] ),
    .A2(net123),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ),
    .C1(_1197_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0249_));
 sky130_fd_sc_hd__mux2_1 _3305_ (.A0(net133),
    .A1(_1150_),
    .S(net81),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1198_));
 sky130_fd_sc_hd__mux2_1 _3306_ (.A0(_1151_),
    .A1(_1154_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1199_));
 sky130_fd_sc_hd__mux4_2 _3307_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[15] ),
    .A1(_1150_),
    .A2(_1151_),
    .A3(_1154_),
    .S0(net83),
    .S1(net84),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1200_));
 sky130_fd_sc_hd__a211o_2 _3308_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ),
    .A2(net71),
    .B1(_1162_),
    .C1(net78),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1201_));
 sky130_fd_sc_hd__o211a_2 _3309_ (.A1(net79),
    .A2(_1167_),
    .B1(_1201_),
    .C1(net50),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1202_));
 sky130_fd_sc_hd__o211ai_2 _3310_ (.A1(_1700_),
    .A2(_0934_),
    .B1(_1157_),
    .C1(_0932_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1203_));
 sky130_fd_sc_hd__or2_2 _3311_ (.A(net78),
    .B(_1166_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1204_));
 sky130_fd_sc_hd__o211a_2 _3312_ (.A1(net78),
    .A2(_1166_),
    .B1(_1203_),
    .C1(net86),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1205_));
 sky130_fd_sc_hd__a211o_2 _3313_ (.A1(net101),
    .A2(_1200_),
    .B1(_1202_),
    .C1(_1205_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1206_));
 sky130_fd_sc_hd__o21ai_2 _3314_ (.A1(_1171_),
    .A2(_1190_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1207_));
 sky130_fd_sc_hd__xnor2_2 _3315_ (.A(_1206_),
    .B(_1207_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1208_));
 sky130_fd_sc_hd__and2_2 _3316_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .B(_1208_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1209_));
 sky130_fd_sc_hd__xor2_2 _3317_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .B(_1208_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1210_));
 sky130_fd_sc_hd__o21a_2 _3318_ (.A1(_1193_),
    .A2(_1195_),
    .B1(_1210_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1211_));
 sky130_fd_sc_hd__or3_2 _3319_ (.A(_1193_),
    .B(_1195_),
    .C(_1210_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1212_));
 sky130_fd_sc_hd__and3b_2 _3320_ (.A_N(_1211_),
    .B(_1212_),
    .C(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1213_));
 sky130_fd_sc_hd__a221o_2 _3321_ (.A1(net229),
    .A2(net123),
    .B1(net96),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ),
    .C1(_1213_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0250_));
 sky130_fd_sc_hd__and3_2 _3322_ (.A(_1684_),
    .B(net133),
    .C(_0922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1214_));
 sky130_fd_sc_hd__mux2_1 _3323_ (.A0(_1174_),
    .A1(_1176_),
    .S(net80),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1215_));
 sky130_fd_sc_hd__a21o_2 _3324_ (.A1(net85),
    .A2(_1215_),
    .B1(_1214_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1216_));
 sky130_fd_sc_hd__mux2_1 _3325_ (.A0(_1180_),
    .A1(_1187_),
    .S(net77),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1217_));
 sky130_fd_sc_hd__mux2_1 _3326_ (.A0(_1177_),
    .A1(_1185_),
    .S(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1218_));
 sky130_fd_sc_hd__a22o_2 _3327_ (.A1(net50),
    .A2(_1217_),
    .B1(_1218_),
    .B2(net86),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1219_));
 sky130_fd_sc_hd__a21o_2 _3328_ (.A1(net101),
    .A2(_1216_),
    .B1(_1219_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1220_));
 sky130_fd_sc_hd__or4b_2 _3329_ (.A(_1170_),
    .B(_1190_),
    .C(_1206_),
    .D_N(_1161_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1221_));
 sky130_fd_sc_hd__nand2_2 _3330_ (.A(net70),
    .B(_1221_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1222_));
 sky130_fd_sc_hd__xor2_2 _3331_ (.A(_1220_),
    .B(_1222_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1223_));
 sky130_fd_sc_hd__nand2b_2 _3332_ (.A_N(_1223_),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1224_));
 sky130_fd_sc_hd__xnor2_2 _3333_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .B(_1223_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1225_));
 sky130_fd_sc_hd__o21ai_2 _3334_ (.A1(_1209_),
    .A2(_1211_),
    .B1(_1225_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1226_));
 sky130_fd_sc_hd__o31a_2 _3335_ (.A1(_1209_),
    .A2(_1211_),
    .A3(_1225_),
    .B1(net117),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1227_));
 sky130_fd_sc_hd__a221o_2 _3336_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ),
    .A2(net96),
    .B1(_1226_),
    .B2(_1227_),
    .C1(_1017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0251_));
 sky130_fd_sc_hd__a21o_2 _3337_ (.A1(net85),
    .A2(_1152_),
    .B1(_1214_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1228_));
 sky130_fd_sc_hd__a22o_2 _3338_ (.A1(net87),
    .A2(_1159_),
    .B1(_1168_),
    .B2(net51),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1229_));
 sky130_fd_sc_hd__a21o_2 _3339_ (.A1(net101),
    .A2(_1228_),
    .B1(_1229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1230_));
 sky130_fd_sc_hd__o21a_2 _3340_ (.A1(_1220_),
    .A2(_1221_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1231_));
 sky130_fd_sc_hd__xnor2_2 _3341_ (.A(_1230_),
    .B(_1231_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1232_));
 sky130_fd_sc_hd__nor2_2 _3342_ (.A(_1689_),
    .B(_1232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1233_));
 sky130_fd_sc_hd__and2_2 _3343_ (.A(_1689_),
    .B(_1232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1234_));
 sky130_fd_sc_hd__or2_2 _3344_ (.A(_1233_),
    .B(_1234_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1235_));
 sky130_fd_sc_hd__and3_2 _3345_ (.A(_1224_),
    .B(_1226_),
    .C(_1235_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1236_));
 sky130_fd_sc_hd__a21oi_2 _3346_ (.A1(_1224_),
    .A2(_1226_),
    .B1(_1235_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1237_));
 sky130_fd_sc_hd__o2bb2a_2 _3347_ (.A1_N(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[4] ),
    .A2_N(net124),
    .B1(net94),
    .B2(_1689_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1238_));
 sky130_fd_sc_hd__o31ai_2 _3348_ (.A1(net115),
    .A2(_1236_),
    .A3(_1237_),
    .B1(_1238_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0252_));
 sky130_fd_sc_hd__a21o_2 _3349_ (.A1(net84),
    .A2(_1175_),
    .B1(_1214_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1239_));
 sky130_fd_sc_hd__a32o_2 _3350_ (.A1(net51),
    .A2(_1186_),
    .A3(_1188_),
    .B1(_1178_),
    .B2(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1240_));
 sky130_fd_sc_hd__a21o_2 _3351_ (.A1(net101),
    .A2(_1239_),
    .B1(_1240_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1241_));
 sky130_fd_sc_hd__o31a_2 _3352_ (.A1(_1220_),
    .A2(_1221_),
    .A3(_1230_),
    .B1(net70),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1242_));
 sky130_fd_sc_hd__xor2_2 _3353_ (.A(_1241_),
    .B(_1242_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1243_));
 sky130_fd_sc_hd__nand2_2 _3354_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .B(_1243_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1244_));
 sky130_fd_sc_hd__inv_2 _3355_ (.A(_1244_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1245_));
 sky130_fd_sc_hd__or2_2 _3356_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .B(_1243_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1246_));
 sky130_fd_sc_hd__and2_2 _3357_ (.A(_1244_),
    .B(_1246_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1247_));
 sky130_fd_sc_hd__inv_2 _3358_ (.A(_1247_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1248_));
 sky130_fd_sc_hd__o21ai_2 _3359_ (.A1(_1233_),
    .A2(_1237_),
    .B1(_1247_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1249_));
 sky130_fd_sc_hd__o31a_2 _3360_ (.A1(_1233_),
    .A2(_1237_),
    .A3(_1247_),
    .B1(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1250_));
 sky130_fd_sc_hd__a221o_2 _3361_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ),
    .A2(net97),
    .B1(_1249_),
    .B2(_1250_),
    .C1(_1038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0253_));
 sky130_fd_sc_hd__a21oi_2 _3362_ (.A1(net85),
    .A2(_1198_),
    .B1(_1214_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1251_));
 sky130_fd_sc_hd__a32o_2 _3363_ (.A1(net51),
    .A2(_1203_),
    .A3(_1204_),
    .B1(_1199_),
    .B2(net87),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1252_));
 sky130_fd_sc_hd__o21ba_2 _3364_ (.A1(net100),
    .A2(_1251_),
    .B1_N(_1252_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1253_));
 sky130_fd_sc_hd__or4_2 _3365_ (.A(_1220_),
    .B(_1221_),
    .C(_1230_),
    .D(_1241_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1254_));
 sky130_fd_sc_hd__nand2_2 _3366_ (.A(_0978_),
    .B(_1254_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1255_));
 sky130_fd_sc_hd__xor2_2 _3367_ (.A(_1253_),
    .B(_1255_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1256_));
 sky130_fd_sc_hd__and2_2 _3368_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .B(_1256_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1257_));
 sky130_fd_sc_hd__or2_2 _3369_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .B(_1256_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1258_));
 sky130_fd_sc_hd__and2b_2 _3370_ (.A_N(_1257_),
    .B(_1258_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1259_));
 sky130_fd_sc_hd__a211o_2 _3371_ (.A1(_1224_),
    .A2(_1226_),
    .B1(_1235_),
    .C1(_1248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1260_));
 sky130_fd_sc_hd__o21ai_2 _3372_ (.A1(_1233_),
    .A2(_1245_),
    .B1(_1246_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1261_));
 sky130_fd_sc_hd__nand2_2 _3373_ (.A(_1260_),
    .B(_1261_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1262_));
 sky130_fd_sc_hd__a21oi_2 _3374_ (.A1(_1259_),
    .A2(_1262_),
    .B1(net116),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1263_));
 sky130_fd_sc_hd__o21a_2 _3375_ (.A1(_1259_),
    .A2(_1262_),
    .B1(_1263_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1264_));
 sky130_fd_sc_hd__a221o_2 _3376_ (.A1(net237),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ),
    .C1(_1264_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0254_));
 sky130_fd_sc_hd__and3_2 _3377_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[3] ),
    .B(_1685_),
    .C(net133),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1265_));
 sky130_fd_sc_hd__nand2_2 _3378_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[15] ),
    .B(net102),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1266_));
 sky130_fd_sc_hd__a221o_2 _3379_ (.A1(net87),
    .A2(_1215_),
    .B1(_1218_),
    .B2(net51),
    .C1(_1265_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1267_));
 sky130_fd_sc_hd__nor2_2 _3380_ (.A(net69),
    .B(_1253_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1268_));
 sky130_fd_sc_hd__a21o_2 _3381_ (.A1(_0978_),
    .A2(_1254_),
    .B1(_1268_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1269_));
 sky130_fd_sc_hd__a211oi_2 _3382_ (.A1(_0978_),
    .A2(_1254_),
    .B1(_1267_),
    .C1(_1268_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1270_));
 sky130_fd_sc_hd__xnor2_2 _3383_ (.A(_1267_),
    .B(_1269_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1271_));
 sky130_fd_sc_hd__nand2_2 _3384_ (.A(_1690_),
    .B(_1271_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1272_));
 sky130_fd_sc_hd__inv_2 _3385_ (.A(_1272_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1273_));
 sky130_fd_sc_hd__nor2_2 _3386_ (.A(_1690_),
    .B(_1271_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1274_));
 sky130_fd_sc_hd__or2_2 _3387_ (.A(_1273_),
    .B(_1274_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1275_));
 sky130_fd_sc_hd__a21o_2 _3388_ (.A1(_1258_),
    .A2(_1262_),
    .B1(_1257_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1276_));
 sky130_fd_sc_hd__xnor2_2 _3389_ (.A(_1275_),
    .B(_1276_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1277_));
 sky130_fd_sc_hd__mux2_1 _3390_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[7] ),
    .A1(_1277_),
    .S(net121),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1278_));
 sky130_fd_sc_hd__mux2_1 _3391_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ),
    .A1(_1278_),
    .S(_1878_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0255_));
 sky130_fd_sc_hd__o21ai_2 _3392_ (.A1(_1257_),
    .A2(_1274_),
    .B1(_1272_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1279_));
 sky130_fd_sc_hd__a21oi_2 _3393_ (.A1(_1258_),
    .A2(_1272_),
    .B1(_1274_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1280_));
 sky130_fd_sc_hd__a31o_2 _3394_ (.A1(_1260_),
    .A2(_1261_),
    .A3(_1279_),
    .B1(_1280_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1281_));
 sky130_fd_sc_hd__o31a_2 _3395_ (.A1(net102),
    .A2(_1153_),
    .A3(_1160_),
    .B1(_1266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1282_));
 sky130_fd_sc_hd__inv_2 _3396_ (.A(_1282_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1283_));
 sky130_fd_sc_hd__or2_2 _3397_ (.A(net69),
    .B(_1270_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1284_));
 sky130_fd_sc_hd__xnor2_2 _3398_ (.A(_1282_),
    .B(_1284_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1285_));
 sky130_fd_sc_hd__nor2_2 _3399_ (.A(_1692_),
    .B(_1285_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1286_));
 sky130_fd_sc_hd__and2_2 _3400_ (.A(_1692_),
    .B(_1285_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1287_));
 sky130_fd_sc_hd__or2_2 _3401_ (.A(_1286_),
    .B(_1287_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1288_));
 sky130_fd_sc_hd__nand2_2 _3402_ (.A(_1281_),
    .B(_1288_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1289_));
 sky130_fd_sc_hd__a311o_2 _3403_ (.A1(_1260_),
    .A2(_1261_),
    .A3(_1279_),
    .B1(_1280_),
    .C1(_1288_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1290_));
 sky130_fd_sc_hd__a22o_2 _3404_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[8] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1291_));
 sky130_fd_sc_hd__a31o_2 _3405_ (.A1(net121),
    .A2(_1289_),
    .A3(_1290_),
    .B1(_1291_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0256_));
 sky130_fd_sc_hd__a21o_2 _3406_ (.A1(net100),
    .A2(_1179_),
    .B1(_1265_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1292_));
 sky130_fd_sc_hd__a21oi_2 _3407_ (.A1(_1270_),
    .A2(_1282_),
    .B1(net69),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1293_));
 sky130_fd_sc_hd__xnor2_2 _3408_ (.A(_1292_),
    .B(_1293_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1294_));
 sky130_fd_sc_hd__nor2_2 _3409_ (.A(_1691_),
    .B(_1294_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1295_));
 sky130_fd_sc_hd__and2_2 _3410_ (.A(_1691_),
    .B(_1294_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1296_));
 sky130_fd_sc_hd__nor2_2 _3411_ (.A(_1295_),
    .B(_1296_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1297_));
 sky130_fd_sc_hd__nand2b_2 _3412_ (.A_N(_1286_),
    .B(_1290_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1298_));
 sky130_fd_sc_hd__a21oi_2 _3413_ (.A1(_1297_),
    .A2(_1298_),
    .B1(net116),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1299_));
 sky130_fd_sc_hd__o21a_2 _3414_ (.A1(_1297_),
    .A2(_1298_),
    .B1(_1299_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1300_));
 sky130_fd_sc_hd__a221o_2 _3415_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[9] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ),
    .C1(_1300_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0257_));
 sky130_fd_sc_hd__a21oi_2 _3416_ (.A1(net100),
    .A2(_1200_),
    .B1(_1265_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1301_));
 sky130_fd_sc_hd__nor2_2 _3417_ (.A(_1283_),
    .B(_1292_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1302_));
 sky130_fd_sc_hd__a21o_2 _3418_ (.A1(_1270_),
    .A2(_1302_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1303_));
 sky130_fd_sc_hd__xnor2_2 _3419_ (.A(_1301_),
    .B(_1303_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1304_));
 sky130_fd_sc_hd__xnor2_2 _3420_ (.A(_1694_),
    .B(_1304_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1305_));
 sky130_fd_sc_hd__nor2_2 _3421_ (.A(_1286_),
    .B(_1295_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1306_));
 sky130_fd_sc_hd__a21o_2 _3422_ (.A1(_1290_),
    .A2(_1306_),
    .B1(_1296_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1307_));
 sky130_fd_sc_hd__or2_2 _3423_ (.A(_1305_),
    .B(_1307_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1308_));
 sky130_fd_sc_hd__nand2_2 _3424_ (.A(_1305_),
    .B(_1307_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1309_));
 sky130_fd_sc_hd__a22o_2 _3425_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[10] ),
    .A2(net125),
    .B1(net98),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1310_));
 sky130_fd_sc_hd__a31o_2 _3426_ (.A1(net120),
    .A2(_1308_),
    .A3(_1309_),
    .B1(_1310_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0258_));
 sky130_fd_sc_hd__nand2_2 _3427_ (.A(net100),
    .B(_1216_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1311_));
 sky130_fd_sc_hd__nand2_2 _3428_ (.A(_1266_),
    .B(_1311_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1312_));
 sky130_fd_sc_hd__a31o_2 _3429_ (.A1(_1270_),
    .A2(_1301_),
    .A3(_1302_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1313_));
 sky130_fd_sc_hd__xor2_2 _3430_ (.A(_1312_),
    .B(_1313_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1314_));
 sky130_fd_sc_hd__xnor2_2 _3431_ (.A(_1693_),
    .B(_1314_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1315_));
 sky130_fd_sc_hd__o21ai_2 _3432_ (.A1(_1694_),
    .A2(_1304_),
    .B1(_1308_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1316_));
 sky130_fd_sc_hd__xnor2_2 _3433_ (.A(_1315_),
    .B(_1316_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1317_));
 sky130_fd_sc_hd__mux2_1 _3434_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[11] ),
    .A1(_1317_),
    .S(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1318_));
 sky130_fd_sc_hd__mux2_1 _3435_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ),
    .A1(_1318_),
    .S(_1878_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0259_));
 sky130_fd_sc_hd__or2_2 _3436_ (.A(_1305_),
    .B(_1315_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1319_));
 sky130_fd_sc_hd__o22a_2 _3437_ (.A1(_1694_),
    .A2(_1304_),
    .B1(_1314_),
    .B2(_1693_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1320_));
 sky130_fd_sc_hd__a21o_2 _3438_ (.A1(_1693_),
    .A2(_1314_),
    .B1(_1320_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1321_));
 sky130_fd_sc_hd__o31a_2 _3439_ (.A1(_1296_),
    .A2(_1306_),
    .A3(_1319_),
    .B1(_1321_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1322_));
 sky130_fd_sc_hd__o41a_2 _3440_ (.A1(_1290_),
    .A2(_1295_),
    .A3(_1296_),
    .A4(_1319_),
    .B1(_1322_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1323_));
 sky130_fd_sc_hd__nand2_2 _3441_ (.A(net100),
    .B(_1228_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1324_));
 sky130_fd_sc_hd__nand2_2 _3442_ (.A(_1266_),
    .B(_1324_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1325_));
 sky130_fd_sc_hd__o21a_2 _3443_ (.A1(net68),
    .A2(_1311_),
    .B1(_1313_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1326_));
 sky130_fd_sc_hd__xor2_2 _3444_ (.A(_1325_),
    .B(_1326_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1327_));
 sky130_fd_sc_hd__or2_2 _3445_ (.A(_1695_),
    .B(_1327_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1328_));
 sky130_fd_sc_hd__nand2_2 _3446_ (.A(_1695_),
    .B(_1327_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1329_));
 sky130_fd_sc_hd__nand2_2 _3447_ (.A(_1328_),
    .B(_1329_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1330_));
 sky130_fd_sc_hd__nand2_2 _3448_ (.A(_1323_),
    .B(_1330_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1331_));
 sky130_fd_sc_hd__or2_2 _3449_ (.A(_1323_),
    .B(_1330_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1332_));
 sky130_fd_sc_hd__a22o_2 _3450_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[12] ),
    .A2(net126),
    .B1(net99),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1333_));
 sky130_fd_sc_hd__a31o_2 _3451_ (.A1(net120),
    .A2(_1331_),
    .A3(_1332_),
    .B1(_1333_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0260_));
 sky130_fd_sc_hd__a21oi_2 _3452_ (.A1(_1875_),
    .A2(_1239_),
    .B1(_1265_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1334_));
 sky130_fd_sc_hd__o21ai_2 _3453_ (.A1(net68),
    .A2(_1324_),
    .B1(_1326_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1335_));
 sky130_fd_sc_hd__xnor2_2 _3454_ (.A(_1334_),
    .B(_1335_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1336_));
 sky130_fd_sc_hd__nor2_2 _3455_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .B(_1336_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1337_));
 sky130_fd_sc_hd__and2_2 _3456_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .B(_1336_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1338_));
 sky130_fd_sc_hd__inv_2 _3457_ (.A(_1338_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1339_));
 sky130_fd_sc_hd__nor2_2 _3458_ (.A(_1337_),
    .B(_1338_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1340_));
 sky130_fd_sc_hd__a21o_2 _3459_ (.A1(_1328_),
    .A2(_1332_),
    .B1(_1340_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1341_));
 sky130_fd_sc_hd__a31o_2 _3460_ (.A1(_1328_),
    .A2(_1332_),
    .A3(_1340_),
    .B1(net116),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1342_));
 sky130_fd_sc_hd__nand2b_2 _3461_ (.A_N(_1342_),
    .B(_1341_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1343_));
 sky130_fd_sc_hd__a21o_2 _3462_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[13] ),
    .A2(net126),
    .B1(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1344_));
 sky130_fd_sc_hd__a22o_2 _3463_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ),
    .A2(net99),
    .B1(_1343_),
    .B2(_1344_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0261_));
 sky130_fd_sc_hd__o21ai_2 _3464_ (.A1(net102),
    .A2(_1251_),
    .B1(_1266_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1345_));
 sky130_fd_sc_hd__a31o_2 _3465_ (.A1(_1324_),
    .A2(_1326_),
    .A3(_1334_),
    .B1(net68),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1346_));
 sky130_fd_sc_hd__xnor2_2 _3466_ (.A(_1345_),
    .B(_1346_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1347_));
 sky130_fd_sc_hd__nand2_2 _3467_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .B(_1347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1348_));
 sky130_fd_sc_hd__nor2_2 _3468_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .B(_1347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1349_));
 sky130_fd_sc_hd__or2_2 _3469_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .B(_1347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1350_));
 sky130_fd_sc_hd__nand2_2 _3470_ (.A(_1348_),
    .B(_1350_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1351_));
 sky130_fd_sc_hd__o211a_2 _3471_ (.A1(_1323_),
    .A2(_1330_),
    .B1(_1339_),
    .C1(_1328_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1352_));
 sky130_fd_sc_hd__or2_2 _3472_ (.A(_1337_),
    .B(_1352_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1353_));
 sky130_fd_sc_hd__o21ai_2 _3473_ (.A1(_1351_),
    .A2(_1353_),
    .B1(net120),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1354_));
 sky130_fd_sc_hd__a21oi_2 _3474_ (.A1(_1351_),
    .A2(_1353_),
    .B1(_1354_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1355_));
 sky130_fd_sc_hd__a221o_2 _3475_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[14] ),
    .A2(net126),
    .B1(net99),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ),
    .C1(_1355_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0262_));
 sky130_fd_sc_hd__o31a_2 _3476_ (.A1(_1337_),
    .A2(_1349_),
    .A3(_1352_),
    .B1(_1348_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1356_));
 sky130_fd_sc_hd__o31a_2 _3477_ (.A1(net102),
    .A2(net69),
    .A3(_1251_),
    .B1(_1346_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1357_));
 sky130_fd_sc_hd__xor2_2 _3478_ (.A(_0799_),
    .B(_1357_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1358_));
 sky130_fd_sc_hd__xnor2_2 _3479_ (.A(_1356_),
    .B(_1358_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1359_));
 sky130_fd_sc_hd__mux2_1 _3480_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[15] ),
    .A1(_1359_),
    .S(net121),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1360_));
 sky130_fd_sc_hd__mux2_1 _3481_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ),
    .A1(_1360_),
    .S(_1878_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0263_));
 sky130_fd_sc_hd__or4_2 _3482_ (.A(net138),
    .B(_1683_),
    .C(net134),
    .D(net137),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1361_));
 sky130_fd_sc_hd__and2b_2 _3483_ (.A_N(_0930_),
    .B(_1361_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1362_));
 sky130_fd_sc_hd__or2_2 _3484_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .B(_1362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1363_));
 sky130_fd_sc_hd__nand2_2 _3485_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .B(_1362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1364_));
 sky130_fd_sc_hd__a21oi_2 _3486_ (.A1(_1363_),
    .A2(_1364_),
    .B1(net114),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1365_));
 sky130_fd_sc_hd__a221o_2 _3487_ (.A1(net252),
    .A2(net123),
    .B1(net96),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ),
    .C1(_1365_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0264_));
 sky130_fd_sc_hd__or4_2 _3488_ (.A(net101),
    .B(net86),
    .C(net79),
    .D(net71),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1366_));
 sky130_fd_sc_hd__or3_2 _3489_ (.A(net86),
    .B(net78),
    .C(net76),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1367_));
 sky130_fd_sc_hd__and3_2 _3490_ (.A(_1362_),
    .B(_1366_),
    .C(_1367_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1368_));
 sky130_fd_sc_hd__or2_2 _3491_ (.A(net67),
    .B(_1362_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1369_));
 sky130_fd_sc_hd__and4_2 _3492_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ),
    .B(_1366_),
    .C(_1367_),
    .D(_1369_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1370_));
 sky130_fd_sc_hd__a31o_2 _3493_ (.A1(_1366_),
    .A2(_1367_),
    .A3(_1369_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1371_));
 sky130_fd_sc_hd__and2b_2 _3494_ (.A_N(_1370_),
    .B(_1371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1372_));
 sky130_fd_sc_hd__xnor2_2 _3495_ (.A(_1363_),
    .B(_1372_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1373_));
 sky130_fd_sc_hd__nor2_2 _3496_ (.A(net114),
    .B(_1373_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1374_));
 sky130_fd_sc_hd__a221o_2 _3497_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[1] ),
    .A2(net123),
    .B1(net96),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ),
    .C1(_1374_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0265_));
 sky130_fd_sc_hd__nor2_2 _3498_ (.A(net67),
    .B(_1366_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1375_));
 sky130_fd_sc_hd__or3_2 _3499_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[0] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ),
    .C(_1875_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1376_));
 sky130_fd_sc_hd__a31o_2 _3500_ (.A1(_1362_),
    .A2(_1366_),
    .A3(_1367_),
    .B1(net67),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1377_));
 sky130_fd_sc_hd__a31oi_2 _3501_ (.A1(_1366_),
    .A2(_1376_),
    .A3(_1377_),
    .B1(_1375_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1378_));
 sky130_fd_sc_hd__and2b_2 _3502_ (.A_N(_1378_),
    .B(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1379_));
 sky130_fd_sc_hd__xnor2_2 _3503_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .B(_1378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1380_));
 sky130_fd_sc_hd__a21o_2 _3504_ (.A1(_1363_),
    .A2(_1371_),
    .B1(_1370_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1381_));
 sky130_fd_sc_hd__nand2_2 _3505_ (.A(_1380_),
    .B(_1381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1382_));
 sky130_fd_sc_hd__or2_2 _3506_ (.A(_1380_),
    .B(_1381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1383_));
 sky130_fd_sc_hd__a22o_2 _3507_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[2] ),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1384_));
 sky130_fd_sc_hd__a31o_2 _3508_ (.A1(net118),
    .A2(_1382_),
    .A3(_1383_),
    .B1(_1384_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0266_));
 sky130_fd_sc_hd__and3_2 _3509_ (.A(_0926_),
    .B(_1368_),
    .C(_1376_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1385_));
 sky130_fd_sc_hd__o21a_2 _3510_ (.A1(net67),
    .A2(_1385_),
    .B1(_0926_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1386_));
 sky130_fd_sc_hd__and2_2 _3511_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ),
    .B(_1386_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1387_));
 sky130_fd_sc_hd__xnor2_2 _3512_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ),
    .B(_1386_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1388_));
 sky130_fd_sc_hd__a21oi_2 _3513_ (.A1(_1380_),
    .A2(_1381_),
    .B1(_1379_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1389_));
 sky130_fd_sc_hd__a21oi_2 _3514_ (.A1(_1388_),
    .A2(_1389_),
    .B1(net114),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1390_));
 sky130_fd_sc_hd__o21a_2 _3515_ (.A1(_1388_),
    .A2(_1389_),
    .B1(_1390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1391_));
 sky130_fd_sc_hd__a221o_2 _3516_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[3] ),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ),
    .C1(_1391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0267_));
 sky130_fd_sc_hd__or2_2 _3517_ (.A(net101),
    .B(_1367_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1392_));
 sky130_fd_sc_hd__o31a_2 _3518_ (.A1(_0928_),
    .A2(net79),
    .A3(net71),
    .B1(_1392_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1393_));
 sky130_fd_sc_hd__nor2_2 _3519_ (.A(net67),
    .B(_1392_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1394_));
 sky130_fd_sc_hd__o21a_2 _3520_ (.A1(net67),
    .A2(_1385_),
    .B1(_1393_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1395_));
 sky130_fd_sc_hd__or2_2 _3521_ (.A(_1394_),
    .B(_1395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1396_));
 sky130_fd_sc_hd__and2_2 _3522_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .B(_1396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1397_));
 sky130_fd_sc_hd__xor2_2 _3523_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .B(_1396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1398_));
 sky130_fd_sc_hd__o21bai_2 _3524_ (.A1(_1388_),
    .A2(_1389_),
    .B1_N(_1387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1399_));
 sky130_fd_sc_hd__and2_2 _3525_ (.A(_1398_),
    .B(_1399_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1400_));
 sky130_fd_sc_hd__nor2_2 _3526_ (.A(_1398_),
    .B(_1399_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1401_));
 sky130_fd_sc_hd__a22oi_2 _3527_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[4] ),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1402_));
 sky130_fd_sc_hd__o31ai_2 _3528_ (.A1(net114),
    .A2(_1400_),
    .A3(_1401_),
    .B1(_1402_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0268_));
 sky130_fd_sc_hd__nor2_2 _3529_ (.A(_1397_),
    .B(_1400_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1403_));
 sky130_fd_sc_hd__or3_2 _3530_ (.A(net135),
    .B(net78),
    .C(net109),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1404_));
 sky130_fd_sc_hd__and3_2 _3531_ (.A(_1385_),
    .B(_1393_),
    .C(_1404_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1405_));
 sky130_fd_sc_hd__a211o_2 _3532_ (.A1(net67),
    .A2(_1404_),
    .B1(_1405_),
    .C1(_1394_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1406_));
 sky130_fd_sc_hd__or2_2 _3533_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .B(_1406_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1407_));
 sky130_fd_sc_hd__nand2_2 _3534_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .B(_1406_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1408_));
 sky130_fd_sc_hd__and3_2 _3535_ (.A(_1403_),
    .B(_1407_),
    .C(_1408_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1409_));
 sky130_fd_sc_hd__a21oi_2 _3536_ (.A1(_1407_),
    .A2(_1408_),
    .B1(_1403_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1410_));
 sky130_fd_sc_hd__or2_2 _3537_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[5] ),
    .B(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1411_));
 sky130_fd_sc_hd__o31a_2 _3538_ (.A1(net114),
    .A2(_1409_),
    .A3(_1410_),
    .B1(_1411_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1412_));
 sky130_fd_sc_hd__mux2_1 _3539_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .A1(_1412_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0269_));
 sky130_fd_sc_hd__a31o_2 _3540_ (.A1(net135),
    .A2(_1385_),
    .A3(_1393_),
    .B1(net67),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1413_));
 sky130_fd_sc_hd__mux2_1 _3541_ (.A0(_0979_),
    .A1(net135),
    .S(_1405_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1414_));
 sky130_fd_sc_hd__and2_2 _3542_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ),
    .B(_1414_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1415_));
 sky130_fd_sc_hd__or2_2 _3543_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ),
    .B(_1414_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1416_));
 sky130_fd_sc_hd__nand2b_2 _3544_ (.A_N(_1415_),
    .B(_1416_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1417_));
 sky130_fd_sc_hd__a221o_2 _3545_ (.A1(_1398_),
    .A2(_1399_),
    .B1(_1406_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ),
    .C1(_1397_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1418_));
 sky130_fd_sc_hd__o21ai_2 _3546_ (.A1(_1397_),
    .A2(_1400_),
    .B1(_1407_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1419_));
 sky130_fd_sc_hd__a21oi_2 _3547_ (.A1(_1408_),
    .A2(_1419_),
    .B1(_1417_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1420_));
 sky130_fd_sc_hd__a31o_2 _3548_ (.A1(_1408_),
    .A2(_1417_),
    .A3(_1419_),
    .B1(net114),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1421_));
 sky130_fd_sc_hd__nor2_2 _3549_ (.A(_1420_),
    .B(_1421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1422_));
 sky130_fd_sc_hd__a221o_2 _3550_ (.A1(net262),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ),
    .C1(_1422_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_1 _3551_ (.A0(net70),
    .A1(net25),
    .S(_1361_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1423_));
 sky130_fd_sc_hd__and2_2 _3552_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ),
    .B(_1423_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1424_));
 sky130_fd_sc_hd__nor2_2 _3553_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ),
    .B(_1423_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1425_));
 sky130_fd_sc_hd__nor2_2 _3554_ (.A(_1424_),
    .B(_1425_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1426_));
 sky130_fd_sc_hd__a31o_2 _3555_ (.A1(_1407_),
    .A2(_1416_),
    .A3(_1418_),
    .B1(_1415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1427_));
 sky130_fd_sc_hd__and2_2 _3556_ (.A(_1426_),
    .B(_1427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1428_));
 sky130_fd_sc_hd__nor2_2 _3557_ (.A(_1426_),
    .B(_1427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1429_));
 sky130_fd_sc_hd__o2bb2a_2 _3558_ (.A1_N(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[7] ),
    .A2_N(net122),
    .B1(net94),
    .B2(_1704_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1430_));
 sky130_fd_sc_hd__o31ai_2 _3559_ (.A1(net114),
    .A2(_1428_),
    .A3(_1429_),
    .B1(_1430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0271_));
 sky130_fd_sc_hd__or2_2 _3560_ (.A(_1424_),
    .B(_1428_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1431_));
 sky130_fd_sc_hd__a21o_2 _3561_ (.A1(_1366_),
    .A2(net25),
    .B1(_1375_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1432_));
 sky130_fd_sc_hd__and2_2 _3562_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .B(_1432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1433_));
 sky130_fd_sc_hd__nor2_2 _3563_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .B(_1432_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1434_));
 sky130_fd_sc_hd__nor2_2 _3564_ (.A(_1433_),
    .B(_1434_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1435_));
 sky130_fd_sc_hd__xnor2_2 _3565_ (.A(_1431_),
    .B(_1435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1436_));
 sky130_fd_sc_hd__nor2_2 _3566_ (.A(net114),
    .B(_1436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1437_));
 sky130_fd_sc_hd__a221o_2 _3567_ (.A1(net257),
    .A2(net122),
    .B1(net95),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ),
    .C1(_1437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0272_));
 sky130_fd_sc_hd__a21o_2 _3568_ (.A1(_1392_),
    .A2(net25),
    .B1(_1394_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1438_));
 sky130_fd_sc_hd__xnor2_2 _3569_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .B(_1438_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1439_));
 sky130_fd_sc_hd__inv_2 _3570_ (.A(_1439_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1440_));
 sky130_fd_sc_hd__a21o_2 _3571_ (.A1(_1431_),
    .A2(_1435_),
    .B1(_1433_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1441_));
 sky130_fd_sc_hd__xnor2_2 _3572_ (.A(_1439_),
    .B(_1441_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1442_));
 sky130_fd_sc_hd__mux2_1 _3573_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[9] ),
    .A1(_1442_),
    .S(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1443_));
 sky130_fd_sc_hd__mux2_1 _3574_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .A1(_1443_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0273_));
 sky130_fd_sc_hd__xor2_2 _3575_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .B(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1444_));
 sky130_fd_sc_hd__o211a_2 _3576_ (.A1(_1424_),
    .A2(_1428_),
    .B1(_1435_),
    .C1(_1440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1445_));
 sky130_fd_sc_hd__a21o_2 _3577_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .A2(_1438_),
    .B1(_1433_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1446_));
 sky130_fd_sc_hd__o21a_2 _3578_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ),
    .A2(_1438_),
    .B1(_1446_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1447_));
 sky130_fd_sc_hd__or3_2 _3579_ (.A(_1444_),
    .B(_1445_),
    .C(_1447_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1448_));
 sky130_fd_sc_hd__o21a_2 _3580_ (.A1(_1445_),
    .A2(_1447_),
    .B1(_1444_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1449_));
 sky130_fd_sc_hd__nor2_2 _3581_ (.A(net115),
    .B(_1449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1450_));
 sky130_fd_sc_hd__a22o_2 _3582_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[10] ),
    .A2(net123),
    .B1(net96),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1451_));
 sky130_fd_sc_hd__a21o_2 _3583_ (.A1(_1448_),
    .A2(_1450_),
    .B1(_1451_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0274_));
 sky130_fd_sc_hd__xor2_2 _3584_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ),
    .B(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1452_));
 sky130_fd_sc_hd__a21o_2 _3585_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .A2(net25),
    .B1(_1449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1453_));
 sky130_fd_sc_hd__xnor2_2 _3586_ (.A(_1452_),
    .B(_1453_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1454_));
 sky130_fd_sc_hd__nand2_2 _3587_ (.A(net118),
    .B(_1454_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1455_));
 sky130_fd_sc_hd__a21o_2 _3588_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[11] ),
    .A2(net123),
    .B1(net118),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1456_));
 sky130_fd_sc_hd__a22o_2 _3589_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ),
    .A2(net96),
    .B1(_1455_),
    .B2(_1456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0275_));
 sky130_fd_sc_hd__o21a_2 _3590_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ),
    .B1(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1457_));
 sky130_fd_sc_hd__a31o_2 _3591_ (.A1(_1444_),
    .A2(_1447_),
    .A3(_1452_),
    .B1(_1457_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1458_));
 sky130_fd_sc_hd__a31o_2 _3592_ (.A1(_1444_),
    .A2(_1445_),
    .A3(_1452_),
    .B1(_1458_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1459_));
 sky130_fd_sc_hd__and2_2 _3593_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ),
    .B(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1460_));
 sky130_fd_sc_hd__nor2_2 _3594_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ),
    .B(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1461_));
 sky130_fd_sc_hd__nor2_2 _3595_ (.A(_1460_),
    .B(_1461_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1462_));
 sky130_fd_sc_hd__a21oi_2 _3596_ (.A1(_1459_),
    .A2(_1462_),
    .B1(net115),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1463_));
 sky130_fd_sc_hd__o21a_2 _3597_ (.A1(_1459_),
    .A2(_1462_),
    .B1(_1463_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1464_));
 sky130_fd_sc_hd__a221o_2 _3598_ (.A1(net267),
    .A2(net123),
    .B1(net96),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ),
    .C1(_1464_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0276_));
 sky130_fd_sc_hd__a21o_2 _3599_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[13] ),
    .A2(net124),
    .B1(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1465_));
 sky130_fd_sc_hd__nand2_2 _3600_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .B(net25),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1466_));
 sky130_fd_sc_hd__or2_2 _3601_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .B(_1413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1467_));
 sky130_fd_sc_hd__nand2_2 _3602_ (.A(_1466_),
    .B(_1467_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1468_));
 sky130_fd_sc_hd__a21oi_2 _3603_ (.A1(_1459_),
    .A2(_1462_),
    .B1(_1460_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1469_));
 sky130_fd_sc_hd__xnor2_2 _3604_ (.A(_1468_),
    .B(_1469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1470_));
 sky130_fd_sc_hd__nand2_2 _3605_ (.A(net119),
    .B(_1470_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1471_));
 sky130_fd_sc_hd__a22o_2 _3606_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ),
    .A2(net97),
    .B1(_1465_),
    .B2(_1471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0277_));
 sky130_fd_sc_hd__xor2_2 _3607_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ),
    .B(_1413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1472_));
 sky130_fd_sc_hd__nand2_2 _3608_ (.A(_1466_),
    .B(_1469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1473_));
 sky130_fd_sc_hd__a21o_2 _3609_ (.A1(_1467_),
    .A2(_1473_),
    .B1(_1472_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1474_));
 sky130_fd_sc_hd__nand3_2 _3610_ (.A(_1467_),
    .B(_1472_),
    .C(_1473_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1475_));
 sky130_fd_sc_hd__a22o_2 _3611_ (.A1(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[14] ),
    .A2(net124),
    .B1(net97),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1476_));
 sky130_fd_sc_hd__a31o_2 _3612_ (.A1(net119),
    .A2(_1474_),
    .A3(_1475_),
    .B1(_1476_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0278_));
 sky130_fd_sc_hd__a32o_2 _3613_ (.A1(_1467_),
    .A2(_1472_),
    .A3(_1473_),
    .B1(_1413_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1477_));
 sky130_fd_sc_hd__xnor2_2 _3614_ (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .B(_1413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1478_));
 sky130_fd_sc_hd__xnor2_2 _3615_ (.A(_1477_),
    .B(_1478_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1479_));
 sky130_fd_sc_hd__mux2_1 _3616_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[15] ),
    .A1(_1479_),
    .S(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1480_));
 sky130_fd_sc_hd__mux2_1 _3617_ (.A0(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ),
    .A1(_1480_),
    .S(net94),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0279_));
 sky130_fd_sc_hd__mux2_1 _3618_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.is_vector ),
    .A1(net212),
    .S(net126),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0280_));
 sky130_fd_sc_hd__mux2_1 _3619_ (.A0(net59),
    .A1(net46),
    .S(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0281_));
 sky130_fd_sc_hd__a21o_2 _3620_ (.A1(_1882_),
    .A2(_1884_),
    .B1(net46),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1481_));
 sky130_fd_sc_hd__a21o_2 _3621_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ),
    .A2(_0058_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1482_));
 sky130_fd_sc_hd__and2_2 _3622_ (.A(_1481_),
    .B(_1482_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0282_));
 sky130_fd_sc_hd__mux2_1 _3623_ (.A0(_1888_),
    .A1(_1481_),
    .S(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0283_));
 sky130_fd_sc_hd__a21oi_2 _3624_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[2] ),
    .A2(_1888_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1483_));
 sky130_fd_sc_hd__nor2_2 _3625_ (.A(net92),
    .B(_1483_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0284_));
 sky130_fd_sc_hd__nand2_2 _3626_ (.A(net130),
    .B(_1884_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1484_));
 sky130_fd_sc_hd__nand2_2 _3627_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1485_));
 sky130_fd_sc_hd__or2_2 _3628_ (.A(net132),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1486_));
 sky130_fd_sc_hd__xnor2_2 _3629_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1487_));
 sky130_fd_sc_hd__nand2_2 _3630_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1488_));
 sky130_fd_sc_hd__or2_2 _3631_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1489_));
 sky130_fd_sc_hd__nand2_2 _3632_ (.A(_1488_),
    .B(_1489_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1490_));
 sky130_fd_sc_hd__nand2_2 _3633_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1491_));
 sky130_fd_sc_hd__or2_2 _3634_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1492_));
 sky130_fd_sc_hd__and2_2 _3635_ (.A(_1491_),
    .B(_1492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1493_));
 sky130_fd_sc_hd__inv_2 _3636_ (.A(_1493_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1494_));
 sky130_fd_sc_hd__nand2_2 _3637_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1495_));
 sky130_fd_sc_hd__inv_2 _3638_ (.A(_1495_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1496_));
 sky130_fd_sc_hd__or2_2 _3639_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1497_));
 sky130_fd_sc_hd__nand2_2 _3640_ (.A(_1495_),
    .B(_1497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1498_));
 sky130_fd_sc_hd__nand2_2 _3641_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1499_));
 sky130_fd_sc_hd__or2_2 _3642_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1500_));
 sky130_fd_sc_hd__nand2_2 _3643_ (.A(_1499_),
    .B(_1500_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1501_));
 sky130_fd_sc_hd__nor2_2 _3644_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1502_));
 sky130_fd_sc_hd__or2_2 _3645_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1503_));
 sky130_fd_sc_hd__nand2_2 _3646_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1504_));
 sky130_fd_sc_hd__nand2_2 _3647_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1505_));
 sky130_fd_sc_hd__or2_2 _3648_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1506_));
 sky130_fd_sc_hd__nand2_2 _3649_ (.A(_1505_),
    .B(_1506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1507_));
 sky130_fd_sc_hd__and2_2 _3650_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1508_));
 sky130_fd_sc_hd__nor2_2 _3651_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1509_));
 sky130_fd_sc_hd__nor2_2 _3652_ (.A(_1508_),
    .B(_1509_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1510_));
 sky130_fd_sc_hd__and2_2 _3653_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1511_));
 sky130_fd_sc_hd__nor2_2 _3654_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1512_));
 sky130_fd_sc_hd__nor2_2 _3655_ (.A(_1511_),
    .B(_1512_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1513_));
 sky130_fd_sc_hd__and2_2 _3656_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1514_));
 sky130_fd_sc_hd__nor2_2 _3657_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1515_));
 sky130_fd_sc_hd__nor2_2 _3658_ (.A(_1514_),
    .B(_1515_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1516_));
 sky130_fd_sc_hd__and2_2 _3659_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1517_));
 sky130_fd_sc_hd__nor2_2 _3660_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1518_));
 sky130_fd_sc_hd__nor2_2 _3661_ (.A(_1517_),
    .B(_1518_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1519_));
 sky130_fd_sc_hd__and2_2 _3662_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1520_));
 sky130_fd_sc_hd__nor2_2 _3663_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1521_));
 sky130_fd_sc_hd__nor2_2 _3664_ (.A(_1520_),
    .B(_1521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1522_));
 sky130_fd_sc_hd__nand2_2 _3665_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1523_));
 sky130_fd_sc_hd__or2_2 _3666_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1524_));
 sky130_fd_sc_hd__and2_2 _3667_ (.A(_1523_),
    .B(_1524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1525_));
 sky130_fd_sc_hd__and2_2 _3668_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1526_));
 sky130_fd_sc_hd__xor2_2 _3669_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1527_));
 sky130_fd_sc_hd__nand3_2 _3670_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .C(_1527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1528_));
 sky130_fd_sc_hd__a31o_2 _3671_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .A3(_1527_),
    .B1(_1526_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1529_));
 sky130_fd_sc_hd__a21boi_2 _3672_ (.A1(_1525_),
    .A2(_1529_),
    .B1_N(_1523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1530_));
 sky130_fd_sc_hd__o21ba_2 _3673_ (.A1(_1521_),
    .A2(_1530_),
    .B1_N(_1520_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1531_));
 sky130_fd_sc_hd__o21ba_2 _3674_ (.A1(_1518_),
    .A2(_1531_),
    .B1_N(_1517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1532_));
 sky130_fd_sc_hd__o21ba_2 _3675_ (.A1(_1515_),
    .A2(_1532_),
    .B1_N(_1514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1533_));
 sky130_fd_sc_hd__o21ba_2 _3676_ (.A1(_1512_),
    .A2(_1533_),
    .B1_N(_1511_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1534_));
 sky130_fd_sc_hd__o21ba_2 _3677_ (.A1(_1509_),
    .A2(_1534_),
    .B1_N(_1508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1535_));
 sky130_fd_sc_hd__o21ai_2 _3678_ (.A1(_1507_),
    .A2(_1535_),
    .B1(_1505_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1536_));
 sky130_fd_sc_hd__o211a_2 _3679_ (.A1(_1507_),
    .A2(_1535_),
    .B1(_1504_),
    .C1(_1505_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1537_));
 sky130_fd_sc_hd__or3_2 _3680_ (.A(_1501_),
    .B(_1502_),
    .C(_1537_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1538_));
 sky130_fd_sc_hd__a21oi_2 _3681_ (.A1(_1499_),
    .A2(_1538_),
    .B1(_1498_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1539_));
 sky130_fd_sc_hd__o21ai_2 _3682_ (.A1(_1496_),
    .A2(_1539_),
    .B1(_1493_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1540_));
 sky130_fd_sc_hd__a21o_2 _3683_ (.A1(_1491_),
    .A2(_1540_),
    .B1(_1490_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1541_));
 sky130_fd_sc_hd__a21oi_2 _3684_ (.A1(_1488_),
    .A2(_1541_),
    .B1(_1487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1542_));
 sky130_fd_sc_hd__a21oi_2 _3685_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ),
    .B1(_1542_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1543_));
 sky130_fd_sc_hd__a21bo_2 _3686_ (.A1(_1485_),
    .A2(_1543_),
    .B1_N(_1486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1544_));
 sky130_fd_sc_hd__xor2_2 _3687_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1545_));
 sky130_fd_sc_hd__xnor2_2 _3688_ (.A(_1544_),
    .B(_1545_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1546_));
 sky130_fd_sc_hd__and2b_2 _3689_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1547_));
 sky130_fd_sc_hd__or2_2 _3690_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .B(_1688_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1548_));
 sky130_fd_sc_hd__and2b_2 _3691_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1549_));
 sky130_fd_sc_hd__and2_2 _3692_ (.A(_1503_),
    .B(_1504_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1550_));
 sky130_fd_sc_hd__nand2b_2 _3693_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1551_));
 sky130_fd_sc_hd__nand2b_2 _3694_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1552_));
 sky130_fd_sc_hd__nand2b_2 _3695_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1553_));
 sky130_fd_sc_hd__nand2b_2 _3696_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1554_));
 sky130_fd_sc_hd__nand2b_2 _3697_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1555_));
 sky130_fd_sc_hd__a21o_2 _3698_ (.A1(_1679_),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .B1(_1527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1556_));
 sky130_fd_sc_hd__nand2b_2 _3699_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1557_));
 sky130_fd_sc_hd__nand2_2 _3700_ (.A(_1556_),
    .B(_1557_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1558_));
 sky130_fd_sc_hd__a21o_2 _3701_ (.A1(_1556_),
    .A2(_1557_),
    .B1(_1525_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1559_));
 sky130_fd_sc_hd__nand2b_2 _3702_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1560_));
 sky130_fd_sc_hd__a21o_2 _3703_ (.A1(_1559_),
    .A2(_1560_),
    .B1(_1522_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1561_));
 sky130_fd_sc_hd__a21o_2 _3704_ (.A1(_1555_),
    .A2(_1561_),
    .B1(_1519_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1562_));
 sky130_fd_sc_hd__a21o_2 _3705_ (.A1(_1554_),
    .A2(_1562_),
    .B1(_1516_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1563_));
 sky130_fd_sc_hd__a21o_2 _3706_ (.A1(_1553_),
    .A2(_1563_),
    .B1(_1513_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1564_));
 sky130_fd_sc_hd__a21o_2 _3707_ (.A1(_1552_),
    .A2(_1564_),
    .B1(_1510_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1565_));
 sky130_fd_sc_hd__a21bo_2 _3708_ (.A1(_1551_),
    .A2(_1565_),
    .B1_N(_1507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1566_));
 sky130_fd_sc_hd__nor2_2 _3709_ (.A(_1550_),
    .B(_1566_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1567_));
 sky130_fd_sc_hd__nand2b_2 _3710_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1568_));
 sky130_fd_sc_hd__nor2_2 _3711_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ),
    .B(_1550_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1569_));
 sky130_fd_sc_hd__a22o_2 _3712_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .A2(_1687_),
    .B1(_1569_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1570_));
 sky130_fd_sc_hd__a21bo_2 _3713_ (.A1(_1501_),
    .A2(_1570_),
    .B1_N(_1568_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1571_));
 sky130_fd_sc_hd__and2b_2 _3714_ (.A_N(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1572_));
 sky130_fd_sc_hd__a21o_2 _3715_ (.A1(_1498_),
    .A2(_1571_),
    .B1(_1572_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1573_));
 sky130_fd_sc_hd__a31o_2 _3716_ (.A1(_1498_),
    .A2(_1501_),
    .A3(_1567_),
    .B1(_1573_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1574_));
 sky130_fd_sc_hd__a21o_2 _3717_ (.A1(_1494_),
    .A2(_1574_),
    .B1(_1549_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1575_));
 sky130_fd_sc_hd__a21o_2 _3718_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .A2(_1688_),
    .B1(_1575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1576_));
 sky130_fd_sc_hd__nand2_2 _3719_ (.A(_1548_),
    .B(_1576_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1577_));
 sky130_fd_sc_hd__a31o_2 _3720_ (.A1(_1487_),
    .A2(_1548_),
    .A3(_1576_),
    .B1(_1547_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1578_));
 sky130_fd_sc_hd__mux2_1 _3721_ (.A0(_1486_),
    .A1(_1485_),
    .S(_1578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1579_));
 sky130_fd_sc_hd__xor2_2 _3722_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ),
    .B(_1579_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1580_));
 sky130_fd_sc_hd__a21oi_2 _3723_ (.A1(net110),
    .A2(_1580_),
    .B1(_1484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1581_));
 sky130_fd_sc_hd__o21a_2 _3724_ (.A1(net110),
    .A2(_1546_),
    .B1(_1581_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1582_));
 sky130_fd_sc_hd__a31o_2 _3725_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ),
    .A2(_1881_),
    .A3(_1484_),
    .B1(_1582_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0285_));
 sky130_fd_sc_hd__a221o_2 _3726_ (.A1(_1674_),
    .A2(_1675_),
    .B1(net129),
    .B2(_0059_),
    .C1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1583_));
 sky130_fd_sc_hd__a21o_2 _3727_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .B1(_1527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1584_));
 sky130_fd_sc_hd__a21o_2 _3728_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .A2(net129),
    .B1(net112),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1585_));
 sky130_fd_sc_hd__a31o_2 _3729_ (.A1(net130),
    .A2(_1528_),
    .A3(_1584_),
    .B1(_1585_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1586_));
 sky130_fd_sc_hd__xor2_2 _3730_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1587_));
 sky130_fd_sc_hd__a31o_2 _3731_ (.A1(net130),
    .A2(_1884_),
    .A3(_1587_),
    .B1(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1588_));
 sky130_fd_sc_hd__a22o_2 _3732_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .A2(net42),
    .B1(_1586_),
    .B2(_1588_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0286_));
 sky130_fd_sc_hd__xnor2_2 _3733_ (.A(_1525_),
    .B(_1529_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1589_));
 sky130_fd_sc_hd__nor2_2 _3734_ (.A(net129),
    .B(_1589_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1590_));
 sky130_fd_sc_hd__a211o_2 _3735_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .A2(net129),
    .B1(net112),
    .C1(_1590_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1591_));
 sky130_fd_sc_hd__nand2_2 _3736_ (.A(_1886_),
    .B(_1484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1592_));
 sky130_fd_sc_hd__nand3_2 _3737_ (.A(_1679_),
    .B(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .C(_1527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1593_));
 sky130_fd_sc_hd__a21o_2 _3738_ (.A1(_1556_),
    .A2(_1593_),
    .B1(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1594_));
 sky130_fd_sc_hd__a32o_2 _3739_ (.A1(_1591_),
    .A2(net40),
    .A3(_1594_),
    .B1(net42),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0287_));
 sky130_fd_sc_hd__xnor2_2 _3740_ (.A(_1522_),
    .B(_1530_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1595_));
 sky130_fd_sc_hd__mux2_1 _3741_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .A1(_1595_),
    .S(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1596_));
 sky130_fd_sc_hd__xnor2_2 _3742_ (.A(_1525_),
    .B(_1558_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1597_));
 sky130_fd_sc_hd__o22a_2 _3743_ (.A1(net112),
    .A2(_1596_),
    .B1(_1597_),
    .B2(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1598_));
 sky130_fd_sc_hd__a22o_2 _3744_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ),
    .A2(net42),
    .B1(net40),
    .B2(_1598_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0288_));
 sky130_fd_sc_hd__xnor2_2 _3745_ (.A(_1519_),
    .B(_1531_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1599_));
 sky130_fd_sc_hd__mux2_1 _3746_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .A1(_1599_),
    .S(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1600_));
 sky130_fd_sc_hd__nand3_2 _3747_ (.A(_1522_),
    .B(_1559_),
    .C(_1560_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1601_));
 sky130_fd_sc_hd__and2_2 _3748_ (.A(_1561_),
    .B(_1601_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1602_));
 sky130_fd_sc_hd__o22a_2 _3749_ (.A1(net112),
    .A2(_1600_),
    .B1(_1602_),
    .B2(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1603_));
 sky130_fd_sc_hd__a22o_2 _3750_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ),
    .A2(net42),
    .B1(net40),
    .B2(_1603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0289_));
 sky130_fd_sc_hd__xnor2_2 _3751_ (.A(_1516_),
    .B(_1532_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1604_));
 sky130_fd_sc_hd__mux2_1 _3752_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .A1(_1604_),
    .S(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1605_));
 sky130_fd_sc_hd__nand3_2 _3753_ (.A(_1519_),
    .B(_1555_),
    .C(_1561_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1606_));
 sky130_fd_sc_hd__and2_2 _3754_ (.A(_1562_),
    .B(_1606_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1607_));
 sky130_fd_sc_hd__o22a_2 _3755_ (.A1(net112),
    .A2(_1605_),
    .B1(_1607_),
    .B2(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1608_));
 sky130_fd_sc_hd__a22o_2 _3756_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ),
    .A2(net42),
    .B1(net40),
    .B2(_1608_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0290_));
 sky130_fd_sc_hd__xnor2_2 _3757_ (.A(_1513_),
    .B(_1533_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1609_));
 sky130_fd_sc_hd__mux2_1 _3758_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .A1(_1609_),
    .S(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1610_));
 sky130_fd_sc_hd__nand3_2 _3759_ (.A(_1516_),
    .B(_1554_),
    .C(_1562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1611_));
 sky130_fd_sc_hd__and2_2 _3760_ (.A(_1563_),
    .B(_1611_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1612_));
 sky130_fd_sc_hd__o22a_2 _3761_ (.A1(net112),
    .A2(_1610_),
    .B1(_1612_),
    .B2(net60),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1613_));
 sky130_fd_sc_hd__a22o_2 _3762_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ),
    .A2(net42),
    .B1(net40),
    .B2(_1613_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0291_));
 sky130_fd_sc_hd__xnor2_2 _3763_ (.A(_1510_),
    .B(_1534_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1614_));
 sky130_fd_sc_hd__mux2_1 _3764_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .A1(_1614_),
    .S(net131),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1615_));
 sky130_fd_sc_hd__nand3_2 _3765_ (.A(_1513_),
    .B(_1553_),
    .C(_1563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1616_));
 sky130_fd_sc_hd__and2_2 _3766_ (.A(_1564_),
    .B(_1616_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1617_));
 sky130_fd_sc_hd__o22a_2 _3767_ (.A1(net112),
    .A2(_1615_),
    .B1(_1617_),
    .B2(net60),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1618_));
 sky130_fd_sc_hd__a22o_2 _3768_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ),
    .A2(net42),
    .B1(net40),
    .B2(_1618_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0292_));
 sky130_fd_sc_hd__xor2_2 _3769_ (.A(_1507_),
    .B(_1535_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1619_));
 sky130_fd_sc_hd__mux2_1 _3770_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .A1(_1619_),
    .S(net131),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1620_));
 sky130_fd_sc_hd__nand3_2 _3771_ (.A(_1510_),
    .B(_1552_),
    .C(_1564_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1621_));
 sky130_fd_sc_hd__and2_2 _3772_ (.A(_1565_),
    .B(_1621_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1622_));
 sky130_fd_sc_hd__o22a_2 _3773_ (.A1(net110),
    .A2(_1620_),
    .B1(_1622_),
    .B2(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1623_));
 sky130_fd_sc_hd__a22o_2 _3774_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ),
    .A2(net42),
    .B1(net40),
    .B2(_1623_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0293_));
 sky130_fd_sc_hd__nand2_2 _3775_ (.A(_1536_),
    .B(_1550_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1624_));
 sky130_fd_sc_hd__o21a_2 _3776_ (.A1(_1536_),
    .A2(_1550_),
    .B1(net131),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1625_));
 sky130_fd_sc_hd__a22o_2 _3777_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .A2(net129),
    .B1(_1624_),
    .B2(_1625_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1626_));
 sky130_fd_sc_hd__nand3b_2 _3778_ (.A_N(_1507_),
    .B(_1551_),
    .C(_1565_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1627_));
 sky130_fd_sc_hd__and2_2 _3779_ (.A(_1566_),
    .B(_1627_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1628_));
 sky130_fd_sc_hd__o22a_2 _3780_ (.A1(net110),
    .A2(_1626_),
    .B1(_1628_),
    .B2(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1629_));
 sky130_fd_sc_hd__a22o_2 _3781_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ),
    .A2(net42),
    .B1(net40),
    .B2(_1629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0294_));
 sky130_fd_sc_hd__o21ai_2 _3782_ (.A1(_1502_),
    .A2(_1537_),
    .B1(_1501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1630_));
 sky130_fd_sc_hd__and3_2 _3783_ (.A(net131),
    .B(_1538_),
    .C(_1630_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1631_));
 sky130_fd_sc_hd__a211o_2 _3784_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .A2(net129),
    .B1(net111),
    .C1(_1631_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1632_));
 sky130_fd_sc_hd__o21ai_2 _3785_ (.A1(_1680_),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ),
    .B1(_1566_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1633_));
 sky130_fd_sc_hd__o21ai_2 _3786_ (.A1(_1550_),
    .A2(_1633_),
    .B1(net110),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1634_));
 sky130_fd_sc_hd__a21o_2 _3787_ (.A1(_1550_),
    .A2(_1633_),
    .B1(_1634_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1635_));
 sky130_fd_sc_hd__a32o_2 _3788_ (.A1(net40),
    .A2(_1632_),
    .A3(_1635_),
    .B1(net42),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0295_));
 sky130_fd_sc_hd__or2_2 _3789_ (.A(net129),
    .B(_1539_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1636_));
 sky130_fd_sc_hd__a31oi_2 _3790_ (.A1(_1498_),
    .A2(_1499_),
    .A3(_1538_),
    .B1(_1636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1637_));
 sky130_fd_sc_hd__a211o_2 _3791_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .A2(net129),
    .B1(net111),
    .C1(_1637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1638_));
 sky130_fd_sc_hd__o21ai_2 _3792_ (.A1(_1567_),
    .A2(_1570_),
    .B1(_1501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1639_));
 sky130_fd_sc_hd__or3_2 _3793_ (.A(_1501_),
    .B(_1567_),
    .C(_1570_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1640_));
 sky130_fd_sc_hd__a21o_2 _3794_ (.A1(_1639_),
    .A2(_1640_),
    .B1(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1641_));
 sky130_fd_sc_hd__a32o_2 _3795_ (.A1(net40),
    .A2(_1638_),
    .A3(_1641_),
    .B1(net43),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0296_));
 sky130_fd_sc_hd__or3_2 _3796_ (.A(_1493_),
    .B(_1496_),
    .C(_1539_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1642_));
 sky130_fd_sc_hd__and2_2 _3797_ (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .B(net129),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1643_));
 sky130_fd_sc_hd__a31o_2 _3798_ (.A1(net131),
    .A2(_1540_),
    .A3(_1642_),
    .B1(_1643_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1644_));
 sky130_fd_sc_hd__and3_2 _3799_ (.A(_1498_),
    .B(_1568_),
    .C(_1639_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1645_));
 sky130_fd_sc_hd__a21o_2 _3800_ (.A1(_1568_),
    .A2(_1639_),
    .B1(_1498_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1646_));
 sky130_fd_sc_hd__nand2_2 _3801_ (.A(net111),
    .B(_1646_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1647_));
 sky130_fd_sc_hd__o22a_2 _3802_ (.A1(net111),
    .A2(_1644_),
    .B1(_1645_),
    .B2(_1647_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1648_));
 sky130_fd_sc_hd__a22o_2 _3803_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ),
    .A2(net43),
    .B1(net41),
    .B2(_1648_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0297_));
 sky130_fd_sc_hd__and3_2 _3804_ (.A(_1490_),
    .B(_1491_),
    .C(_1540_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1649_));
 sky130_fd_sc_hd__nand2_2 _3805_ (.A(net131),
    .B(_1541_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1650_));
 sky130_fd_sc_hd__a2bb2o_2 _3806_ (.A1_N(_1649_),
    .A2_N(_1650_),
    .B1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .B2(net129),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1651_));
 sky130_fd_sc_hd__xnor2_2 _3807_ (.A(_1493_),
    .B(_1574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1652_));
 sky130_fd_sc_hd__o22a_2 _3808_ (.A1(net111),
    .A2(_1651_),
    .B1(_1652_),
    .B2(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1653_));
 sky130_fd_sc_hd__a22o_2 _3809_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ),
    .A2(net43),
    .B1(net41),
    .B2(_1653_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0298_));
 sky130_fd_sc_hd__and3_2 _3810_ (.A(_1487_),
    .B(_1488_),
    .C(_1541_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1654_));
 sky130_fd_sc_hd__nor2_2 _3811_ (.A(_1542_),
    .B(_1654_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1655_));
 sky130_fd_sc_hd__a21o_2 _3812_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .A2(_1686_),
    .B1(net111),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1656_));
 sky130_fd_sc_hd__a21o_2 _3813_ (.A1(net131),
    .A2(_1655_),
    .B1(_1656_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1657_));
 sky130_fd_sc_hd__xnor2_2 _3814_ (.A(_1490_),
    .B(_1575_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1658_));
 sky130_fd_sc_hd__nand2_2 _3815_ (.A(net111),
    .B(_1658_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1659_));
 sky130_fd_sc_hd__a32o_2 _3816_ (.A1(net41),
    .A2(_1657_),
    .A3(_1659_),
    .B1(net43),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0299_));
 sky130_fd_sc_hd__nand2_2 _3817_ (.A(_1485_),
    .B(_1486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1660_));
 sky130_fd_sc_hd__xor2_2 _3818_ (.A(_1543_),
    .B(_1660_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1661_));
 sky130_fd_sc_hd__mux2_1 _3819_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ),
    .A1(_1661_),
    .S(net131),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1662_));
 sky130_fd_sc_hd__xnor2_2 _3820_ (.A(_1487_),
    .B(_1577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1663_));
 sky130_fd_sc_hd__o22a_2 _3821_ (.A1(net110),
    .A2(_1662_),
    .B1(_1663_),
    .B2(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1664_));
 sky130_fd_sc_hd__a22o_2 _3822_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ),
    .A2(net43),
    .B1(net41),
    .B2(_1664_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0300_));
 sky130_fd_sc_hd__a21o_2 _3823_ (.A1(_1686_),
    .A2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ),
    .B1(net110),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1665_));
 sky130_fd_sc_hd__a21o_2 _3824_ (.A1(net131),
    .A2(_1546_),
    .B1(_1665_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1666_));
 sky130_fd_sc_hd__xnor2_2 _3825_ (.A(_1578_),
    .B(_1660_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1667_));
 sky130_fd_sc_hd__nand2_2 _3826_ (.A(net110),
    .B(_1667_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1668_));
 sky130_fd_sc_hd__a32o_2 _3827_ (.A1(net41),
    .A2(_1666_),
    .A3(_1668_),
    .B1(net43),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0301_));
 sky130_fd_sc_hd__a22o_2 _3828_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[11] ),
    .A2(net60),
    .B1(net46),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0302_));
 sky130_fd_sc_hd__a22o_2 _3829_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[12] ),
    .A2(net60),
    .B1(net46),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0303_));
 sky130_fd_sc_hd__a22o_2 _3830_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[13] ),
    .A2(net60),
    .B1(net46),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0304_));
 sky130_fd_sc_hd__a22o_2 _3831_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[14] ),
    .A2(net60),
    .B1(net46),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0305_));
 sky130_fd_sc_hd__a22o_2 _3832_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[15] ),
    .A2(net59),
    .B1(net46),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0306_));
 sky130_fd_sc_hd__mux2_1 _3833_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ),
    .A1(_1587_),
    .S(net130),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1669_));
 sky130_fd_sc_hd__a22o_2 _3834_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[15] ),
    .A2(net46),
    .B1(_1669_),
    .B2(net59),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0307_));
 sky130_fd_sc_hd__mux2_1 _3835_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ),
    .A1(net249),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0308_));
 sky130_fd_sc_hd__mux2_1 _3836_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ),
    .A1(net236),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0309_));
 sky130_fd_sc_hd__mux2_1 _3837_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ),
    .A1(net224),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0310_));
 sky130_fd_sc_hd__mux2_1 _3838_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[3] ),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0311_));
 sky130_fd_sc_hd__mux2_1 _3839_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ),
    .A1(net220),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0312_));
 sky130_fd_sc_hd__mux2_1 _3840_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ),
    .A1(net245),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0313_));
 sky130_fd_sc_hd__mux2_1 _3841_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ),
    .A1(net234),
    .S(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0314_));
 sky130_fd_sc_hd__mux2_1 _3842_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ),
    .A1(net242),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0315_));
 sky130_fd_sc_hd__mux2_1 _3843_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ),
    .A1(net223),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0316_));
 sky130_fd_sc_hd__mux2_1 _3844_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ),
    .A1(net235),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0317_));
 sky130_fd_sc_hd__mux2_1 _3845_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ),
    .A1(net264),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0318_));
 sky130_fd_sc_hd__mux2_1 _3846_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ),
    .A1(net246),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0319_));
 sky130_fd_sc_hd__mux2_1 _3847_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ),
    .A1(net250),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0320_));
 sky130_fd_sc_hd__mux2_1 _3848_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[13] ),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0321_));
 sky130_fd_sc_hd__mux2_1 _3849_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ),
    .A1(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[14] ),
    .S(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0322_));
 sky130_fd_sc_hd__mux2_1 _3850_ (.A0(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ),
    .A1(net263),
    .S(_1880_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0323_));
 sky130_fd_sc_hd__and2_2 _3851_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[0] ),
    .B(net92),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1670_));
 sky130_fd_sc_hd__a221o_2 _3852_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[1] ),
    .A2(net60),
    .B1(net46),
    .B2(net130),
    .C1(_1670_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0324_));
 sky130_fd_sc_hd__and2_2 _3853_ (.A(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[1] ),
    .B(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1671_));
 sky130_fd_sc_hd__a221o_2 _3854_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[2] ),
    .A2(net61),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[1] ),
    .C1(_1671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0325_));
 sky130_fd_sc_hd__o22a_2 _3855_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[3] ),
    .A2(_1886_),
    .B1(_0058_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0326_));
 sky130_fd_sc_hd__a22o_2 _3856_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[4] ),
    .A2(net59),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0327_));
 sky130_fd_sc_hd__a22o_2 _3857_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[5] ),
    .A2(net60),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0328_));
 sky130_fd_sc_hd__a22o_2 _3858_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[6] ),
    .A2(net60),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0329_));
 sky130_fd_sc_hd__o22a_2 _3859_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[7] ),
    .A2(_1886_),
    .B1(_0058_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0330_));
 sky130_fd_sc_hd__o22a_2 _3860_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[8] ),
    .A2(_1886_),
    .B1(_0058_),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0331_));
 sky130_fd_sc_hd__a221o_2 _3861_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[9] ),
    .A2(net61),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[8] ),
    .C1(_1670_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0332_));
 sky130_fd_sc_hd__a221o_2 _3862_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[10] ),
    .A2(net61),
    .B1(net47),
    .B2(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[9] ),
    .C1(_1671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0333_));
 sky130_fd_sc_hd__a31o_2 _3863_ (.A1(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[10] ),
    .A2(_1881_),
    .A3(_1886_),
    .B1(_1670_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0334_));
 sky130_fd_sc_hd__dfxtp_2 _3864_ (.CLK(clknet_leaf_13_clk),
    .D(_0060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[5] ));
 sky130_fd_sc_hd__dfxtp_2 _3865_ (.CLK(clknet_leaf_13_clk),
    .D(_0061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3866_ (.CLK(clknet_leaf_13_clk),
    .D(_0062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3867_ (.CLK(clknet_leaf_13_clk),
    .D(_0063_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3868_ (.CLK(clknet_leaf_13_clk),
    .D(_0064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3869_ (.CLK(clknet_leaf_13_clk),
    .D(_0065_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_k[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3870_ (.CLK(clknet_leaf_10_clk),
    .D(_0066_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.state_reg[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3871_ (.CLK(clknet_leaf_20_clk),
    .D(_0067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3872_ (.CLK(clknet_leaf_14_clk),
    .D(_0068_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3873_ (.CLK(clknet_leaf_15_clk),
    .D(_0069_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[10] ));
 sky130_fd_sc_hd__dfxtp_2 _3874_ (.CLK(clknet_leaf_14_clk),
    .D(_0070_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[11] ));
 sky130_fd_sc_hd__dfxtp_2 _3875_ (.CLK(clknet_leaf_14_clk),
    .D(_0071_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[12] ));
 sky130_fd_sc_hd__dfxtp_2 _3876_ (.CLK(clknet_leaf_13_clk),
    .D(_0072_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[13] ));
 sky130_fd_sc_hd__dfxtp_2 _3877_ (.CLK(clknet_leaf_13_clk),
    .D(_0073_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[14] ));
 sky130_fd_sc_hd__dfxtp_2 _3878_ (.CLK(clknet_leaf_15_clk),
    .D(_0074_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[15] ));
 sky130_fd_sc_hd__dfxtp_2 _3879_ (.CLK(clknet_leaf_20_clk),
    .D(_0075_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3880_ (.CLK(clknet_leaf_20_clk),
    .D(_0076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3881_ (.CLK(clknet_leaf_23_clk),
    .D(_0077_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3882_ (.CLK(clknet_leaf_23_clk),
    .D(_0078_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3883_ (.CLK(clknet_leaf_23_clk),
    .D(_0079_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3884_ (.CLK(clknet_leaf_23_clk),
    .D(_0080_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[5] ));
 sky130_fd_sc_hd__dfxtp_2 _3885_ (.CLK(clknet_leaf_26_clk),
    .D(_0081_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[6] ));
 sky130_fd_sc_hd__dfxtp_2 _3886_ (.CLK(clknet_leaf_18_clk),
    .D(_0082_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[7] ));
 sky130_fd_sc_hd__dfxtp_2 _3887_ (.CLK(clknet_leaf_18_clk),
    .D(_0083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[8] ));
 sky130_fd_sc_hd__dfxtp_2 _3888_ (.CLK(clknet_leaf_18_clk),
    .D(_0084_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[9] ));
 sky130_fd_sc_hd__dfxtp_2 _3889_ (.CLK(clknet_leaf_28_clk),
    .D(_0085_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3890_ (.CLK(clknet_leaf_25_clk),
    .D(_0086_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3891_ (.CLK(clknet_leaf_25_clk),
    .D(_0087_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3892_ (.CLK(clknet_leaf_25_clk),
    .D(_0088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3893_ (.CLK(clknet_leaf_25_clk),
    .D(_0089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3894_ (.CLK(clknet_leaf_25_clk),
    .D(_0090_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[5] ));
 sky130_fd_sc_hd__dfxtp_2 _3895_ (.CLK(clknet_leaf_25_clk),
    .D(_0091_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[6] ));
 sky130_fd_sc_hd__dfxtp_2 _3896_ (.CLK(clknet_leaf_24_clk),
    .D(_0092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[7] ));
 sky130_fd_sc_hd__dfxtp_2 _3897_ (.CLK(clknet_leaf_24_clk),
    .D(_0093_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[8] ));
 sky130_fd_sc_hd__dfxtp_2 _3898_ (.CLK(clknet_leaf_24_clk),
    .D(_0094_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[9] ));
 sky130_fd_sc_hd__dfxtp_2 _3899_ (.CLK(clknet_leaf_25_clk),
    .D(_0095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[10] ));
 sky130_fd_sc_hd__dfxtp_2 _3900_ (.CLK(clknet_leaf_26_clk),
    .D(_0096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[11] ));
 sky130_fd_sc_hd__dfxtp_2 _3901_ (.CLK(clknet_leaf_26_clk),
    .D(_0097_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[12] ));
 sky130_fd_sc_hd__dfxtp_2 _3902_ (.CLK(clknet_leaf_27_clk),
    .D(_0098_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[13] ));
 sky130_fd_sc_hd__dfxtp_2 _3903_ (.CLK(clknet_leaf_27_clk),
    .D(_0099_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[14] ));
 sky130_fd_sc_hd__dfxtp_2 _3904_ (.CLK(clknet_leaf_27_clk),
    .D(_0100_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[15] ));
 sky130_fd_sc_hd__dfxtp_2 _3905_ (.CLK(clknet_leaf_29_clk),
    .D(_0101_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3906_ (.CLK(clknet_leaf_0_clk),
    .D(_0102_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3907_ (.CLK(clknet_leaf_1_clk),
    .D(_0103_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[6] ));
 sky130_fd_sc_hd__dfxtp_2 _3908_ (.CLK(clknet_leaf_1_clk),
    .D(_0104_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[7] ));
 sky130_fd_sc_hd__dfxtp_2 _3909_ (.CLK(clknet_leaf_6_clk),
    .D(_0105_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[10] ));
 sky130_fd_sc_hd__dfxtp_2 _3910_ (.CLK(clknet_leaf_4_clk),
    .D(_0106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[11] ));
 sky130_fd_sc_hd__dfxtp_2 _3911_ (.CLK(clknet_leaf_4_clk),
    .D(_0107_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[12] ));
 sky130_fd_sc_hd__dfxtp_2 _3912_ (.CLK(clknet_leaf_4_clk),
    .D(_0108_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[13] ));
 sky130_fd_sc_hd__dfxtp_2 _3913_ (.CLK(clknet_leaf_4_clk),
    .D(_0109_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[14] ));
 sky130_fd_sc_hd__dfxtp_2 _3914_ (.CLK(clknet_leaf_4_clk),
    .D(_0110_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[15] ));
 sky130_fd_sc_hd__dfxtp_2 _3915_ (.CLK(clknet_leaf_28_clk),
    .D(_0111_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3916_ (.CLK(clknet_leaf_28_clk),
    .D(_0112_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3917_ (.CLK(clknet_leaf_31_clk),
    .D(_0113_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3918_ (.CLK(clknet_leaf_27_clk),
    .D(_0114_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3919_ (.CLK(clknet_leaf_0_clk),
    .D(_0115_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3920_ (.CLK(clknet_leaf_0_clk),
    .D(_0116_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[5] ));
 sky130_fd_sc_hd__dfxtp_2 _3921_ (.CLK(clknet_leaf_0_clk),
    .D(_0117_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[6] ));
 sky130_fd_sc_hd__dfxtp_2 _3922_ (.CLK(clknet_leaf_1_clk),
    .D(_0118_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[7] ));
 sky130_fd_sc_hd__dfxtp_2 _3923_ (.CLK(clknet_leaf_1_clk),
    .D(_0119_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[8] ));
 sky130_fd_sc_hd__dfxtp_2 _3924_ (.CLK(clknet_leaf_1_clk),
    .D(_0120_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[9] ));
 sky130_fd_sc_hd__dfxtp_2 _3925_ (.CLK(clknet_leaf_2_clk),
    .D(_0121_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[10] ));
 sky130_fd_sc_hd__dfxtp_2 _3926_ (.CLK(clknet_leaf_3_clk),
    .D(_0122_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[11] ));
 sky130_fd_sc_hd__dfxtp_2 _3927_ (.CLK(clknet_leaf_4_clk),
    .D(_0123_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[12] ));
 sky130_fd_sc_hd__dfxtp_2 _3928_ (.CLK(clknet_leaf_4_clk),
    .D(_0124_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[13] ));
 sky130_fd_sc_hd__dfxtp_2 _3929_ (.CLK(clknet_leaf_4_clk),
    .D(_0125_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[14] ));
 sky130_fd_sc_hd__dfxtp_2 _3930_ (.CLK(clknet_leaf_5_clk),
    .D(_0126_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[15] ));
 sky130_fd_sc_hd__dfrtp_2 _3931_ (.CLK(clknet_leaf_9_clk),
    .D(_0127_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3932_ (.CLK(clknet_leaf_9_clk),
    .D(_0128_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3933_ (.CLK(clknet_leaf_9_clk),
    .D(_0129_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3934_ (.CLK(clknet_leaf_8_clk),
    .D(_0130_),
    .RESET_B(net185),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _3935_ (.CLK(clknet_leaf_9_clk),
    .D(_0131_),
    .RESET_B(net185),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _3936_ (.CLK(clknet_leaf_11_clk),
    .D(_0132_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _3937_ (.CLK(clknet_leaf_9_clk),
    .D(_0133_),
    .RESET_B(net185),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _3938_ (.CLK(clknet_leaf_11_clk),
    .D(_0134_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_bit_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3939_ (.CLK(clknet_leaf_12_clk),
    .D(_0135_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_bit_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3940_ (.CLK(clknet_leaf_11_clk),
    .D(_0136_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_bit_count_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3941_ (.CLK(clknet_leaf_10_clk),
    .D(_0137_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3942_ (.CLK(clknet_leaf_10_clk),
    .D(_0138_),
    .RESET_B(net187),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3943_ (.CLK(clknet_leaf_10_clk),
    .D(_0139_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.rx_byte_count_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3944_ (.CLK(clknet_leaf_19_clk),
    .D(_0140_),
    .RESET_B(net164),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3945_ (.CLK(clknet_leaf_17_clk),
    .D(_0141_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3946_ (.CLK(clknet_leaf_19_clk),
    .D(_0142_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3947_ (.CLK(clknet_leaf_17_clk),
    .D(_0143_),
    .RESET_B(net161),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _3948_ (.CLK(clknet_leaf_18_clk),
    .D(_0144_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _3949_ (.CLK(clknet_leaf_18_clk),
    .D(_0145_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _3950_ (.CLK(clknet_leaf_18_clk),
    .D(_0146_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _3951_ (.CLK(clknet_leaf_17_clk),
    .D(_0147_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _3952_ (.CLK(clknet_leaf_19_clk),
    .D(_0148_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _3953_ (.CLK(clknet_leaf_18_clk),
    .D(_0149_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _3954_ (.CLK(clknet_leaf_15_clk),
    .D(_0150_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _3955_ (.CLK(clknet_leaf_15_clk),
    .D(_0151_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _3956_ (.CLK(clknet_leaf_15_clk),
    .D(_0152_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _3957_ (.CLK(clknet_leaf_15_clk),
    .D(_0153_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _3958_ (.CLK(clknet_leaf_15_clk),
    .D(_0154_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _3959_ (.CLK(clknet_leaf_15_clk),
    .D(_0155_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_x_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _3960_ (.CLK(clknet_leaf_17_clk),
    .D(_0156_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3961_ (.CLK(clknet_leaf_17_clk),
    .D(_0157_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3962_ (.CLK(clknet_leaf_17_clk),
    .D(_0158_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3963_ (.CLK(clknet_leaf_17_clk),
    .D(_0159_),
    .RESET_B(net162),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _3964_ (.CLK(clknet_leaf_7_clk),
    .D(_0160_),
    .RESET_B(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _3965_ (.CLK(clknet_leaf_16_clk),
    .D(_0161_),
    .RESET_B(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _3966_ (.CLK(clknet_leaf_7_clk),
    .D(_0162_),
    .RESET_B(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _3967_ (.CLK(clknet_leaf_16_clk),
    .D(_0163_),
    .RESET_B(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _3968_ (.CLK(clknet_leaf_9_clk),
    .D(_0164_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _3969_ (.CLK(clknet_leaf_9_clk),
    .D(_0165_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _3970_ (.CLK(clknet_leaf_9_clk),
    .D(_0166_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _3971_ (.CLK(clknet_leaf_8_clk),
    .D(_0167_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _3972_ (.CLK(clknet_leaf_8_clk),
    .D(_0168_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _3973_ (.CLK(clknet_leaf_8_clk),
    .D(_0169_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _3974_ (.CLK(clknet_leaf_8_clk),
    .D(_0170_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _3975_ (.CLK(clknet_leaf_7_clk),
    .D(_0171_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_y_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _3976_ (.CLK(clknet_leaf_10_clk),
    .D(_0172_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_error ));
 sky130_fd_sc_hd__dfrtp_2 _3977_ (.CLK(clknet_leaf_10_clk),
    .D(_0173_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_domain_error ));
 sky130_fd_sc_hd__dfrtp_2 _3978_ (.CLK(clknet_leaf_4_clk),
    .D(_0174_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_overflow ));
 sky130_fd_sc_hd__dfrtp_2 _3979_ (.CLK(clknet_leaf_5_clk),
    .D(_0175_),
    .RESET_B(net173),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _3980_ (.CLK(clknet_leaf_5_clk),
    .D(_0176_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _3981_ (.CLK(clknet_leaf_5_clk),
    .D(_0177_),
    .RESET_B(net173),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _3982_ (.CLK(clknet_leaf_4_clk),
    .D(_0178_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.state[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3983_ (.CLK(clknet_leaf_23_clk),
    .D(_0179_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[0] ));
 sky130_fd_sc_hd__dfxtp_2 _3984_ (.CLK(clknet_leaf_23_clk),
    .D(_0180_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[1] ));
 sky130_fd_sc_hd__dfxtp_2 _3985_ (.CLK(clknet_leaf_23_clk),
    .D(_0181_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[2] ));
 sky130_fd_sc_hd__dfxtp_2 _3986_ (.CLK(clknet_leaf_23_clk),
    .D(_0182_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[3] ));
 sky130_fd_sc_hd__dfxtp_2 _3987_ (.CLK(clknet_leaf_24_clk),
    .D(_0183_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[4] ));
 sky130_fd_sc_hd__dfxtp_2 _3988_ (.CLK(clknet_leaf_24_clk),
    .D(_0184_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[5] ));
 sky130_fd_sc_hd__dfxtp_2 _3989_ (.CLK(clknet_leaf_24_clk),
    .D(_0185_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[6] ));
 sky130_fd_sc_hd__dfxtp_2 _3990_ (.CLK(clknet_leaf_24_clk),
    .D(_0186_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[7] ));
 sky130_fd_sc_hd__dfxtp_2 _3991_ (.CLK(clknet_leaf_22_clk),
    .D(_0187_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[8] ));
 sky130_fd_sc_hd__dfxtp_2 _3992_ (.CLK(clknet_leaf_23_clk),
    .D(_0188_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[9] ));
 sky130_fd_sc_hd__dfxtp_2 _3993_ (.CLK(clknet_leaf_18_clk),
    .D(_0189_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[10] ));
 sky130_fd_sc_hd__dfxtp_2 _3994_ (.CLK(clknet_leaf_18_clk),
    .D(_0190_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[11] ));
 sky130_fd_sc_hd__dfxtp_2 _3995_ (.CLK(clknet_leaf_18_clk),
    .D(_0191_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[12] ));
 sky130_fd_sc_hd__dfxtp_2 _3996_ (.CLK(clknet_leaf_18_clk),
    .D(_0192_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[13] ));
 sky130_fd_sc_hd__dfxtp_2 _3997_ (.CLK(clknet_leaf_18_clk),
    .D(_0193_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[14] ));
 sky130_fd_sc_hd__dfxtp_2 _3998_ (.CLK(clknet_leaf_17_clk),
    .D(_0194_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_x[15] ));
 sky130_fd_sc_hd__dfxtp_2 _3999_ (.CLK(clknet_leaf_9_clk),
    .D(_0195_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[15] ));
 sky130_fd_sc_hd__dfxtp_2 _4000_ (.CLK(clknet_leaf_26_clk),
    .D(_0196_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[0] ));
 sky130_fd_sc_hd__dfxtp_2 _4001_ (.CLK(clknet_leaf_26_clk),
    .D(_0197_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[1] ));
 sky130_fd_sc_hd__dfxtp_2 _4002_ (.CLK(clknet_leaf_26_clk),
    .D(_0198_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[2] ));
 sky130_fd_sc_hd__dfxtp_2 _4003_ (.CLK(clknet_leaf_26_clk),
    .D(_0199_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[3] ));
 sky130_fd_sc_hd__dfxtp_2 _4004_ (.CLK(clknet_leaf_26_clk),
    .D(_0200_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[4] ));
 sky130_fd_sc_hd__dfxtp_2 _4005_ (.CLK(clknet_leaf_27_clk),
    .D(_0201_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[5] ));
 sky130_fd_sc_hd__dfxtp_2 _4006_ (.CLK(clknet_leaf_7_clk),
    .D(_0202_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[6] ));
 sky130_fd_sc_hd__dfxtp_2 _4007_ (.CLK(clknet_leaf_7_clk),
    .D(_0203_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[7] ));
 sky130_fd_sc_hd__dfxtp_2 _4008_ (.CLK(clknet_leaf_7_clk),
    .D(_0204_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[8] ));
 sky130_fd_sc_hd__dfxtp_2 _4009_ (.CLK(clknet_leaf_7_clk),
    .D(_0205_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[9] ));
 sky130_fd_sc_hd__dfxtp_2 _4010_ (.CLK(clknet_leaf_6_clk),
    .D(_0206_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[10] ));
 sky130_fd_sc_hd__dfxtp_2 _4011_ (.CLK(clknet_leaf_6_clk),
    .D(_0207_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[11] ));
 sky130_fd_sc_hd__dfxtp_2 _4012_ (.CLK(clknet_leaf_7_clk),
    .D(_0208_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ));
 sky130_fd_sc_hd__dfxtp_2 _4013_ (.CLK(clknet_leaf_6_clk),
    .D(_0209_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[13] ));
 sky130_fd_sc_hd__dfxtp_2 _4014_ (.CLK(clknet_leaf_6_clk),
    .D(_0210_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4015_ (.CLK(clknet_leaf_5_clk),
    .D(_0211_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4016_ (.CLK(clknet_leaf_27_clk),
    .D(_0212_),
    .RESET_B(net151),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4017_ (.CLK(clknet_leaf_27_clk),
    .D(_0213_),
    .RESET_B(net151),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4018_ (.CLK(clknet_leaf_1_clk),
    .D(_0214_),
    .RESET_B(net151),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4019_ (.CLK(clknet_leaf_1_clk),
    .D(_0215_),
    .RESET_B(net151),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4020_ (.CLK(clknet_leaf_1_clk),
    .D(_0216_),
    .RESET_B(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4021_ (.CLK(clknet_leaf_1_clk),
    .D(_0217_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4022_ (.CLK(clknet_leaf_7_clk),
    .D(_0218_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4023_ (.CLK(clknet_leaf_6_clk),
    .D(_0219_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4024_ (.CLK(clknet_leaf_6_clk),
    .D(_0220_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4025_ (.CLK(clknet_leaf_6_clk),
    .D(_0221_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4026_ (.CLK(clknet_leaf_6_clk),
    .D(_0222_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4027_ (.CLK(clknet_leaf_6_clk),
    .D(_0223_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4028_ (.CLK(clknet_leaf_6_clk),
    .D(_0224_),
    .RESET_B(net170),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4029_ (.CLK(clknet_leaf_5_clk),
    .D(_0225_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4030_ (.CLK(clknet_leaf_5_clk),
    .D(_0226_),
    .RESET_B(net175),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_result[14] ));
 sky130_fd_sc_hd__dfxtp_2 _4031_ (.CLK(clknet_leaf_3_clk),
    .D(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_mode_r[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4032_ (.CLK(clknet_leaf_30_clk),
    .D(_0228_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4033_ (.CLK(clknet_leaf_30_clk),
    .D(_0229_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4034_ (.CLK(clknet_leaf_30_clk),
    .D(_0230_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4035_ (.CLK(clknet_leaf_30_clk),
    .D(_0231_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4036_ (.CLK(clknet_leaf_30_clk),
    .D(_0232_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4037_ (.CLK(clknet_leaf_29_clk),
    .D(_0233_),
    .RESET_B(net145),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4038_ (.CLK(clknet_leaf_31_clk),
    .D(_0234_),
    .RESET_B(net147),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4039_ (.CLK(clknet_leaf_31_clk),
    .D(_0235_),
    .RESET_B(net147),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4040_ (.CLK(clknet_leaf_0_clk),
    .D(_0236_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4041_ (.CLK(clknet_leaf_0_clk),
    .D(_0237_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4042_ (.CLK(clknet_leaf_0_clk),
    .D(_0238_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4043_ (.CLK(clknet_leaf_31_clk),
    .D(_0239_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4044_ (.CLK(clknet_leaf_2_clk),
    .D(_0240_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4045_ (.CLK(clknet_leaf_2_clk),
    .D(_0241_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4046_ (.CLK(clknet_leaf_6_clk),
    .D(_0242_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4047_ (.CLK(clknet_leaf_2_clk),
    .D(_0243_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4048_ (.CLK(clknet_leaf_3_clk),
    .D(_0244_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4049_ (.CLK(clknet_leaf_3_clk),
    .D(_0245_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4050_ (.CLK(clknet_leaf_3_clk),
    .D(_0246_),
    .RESET_B(net171),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4051_ (.CLK(clknet_leaf_4_clk),
    .D(_0247_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4052_ (.CLK(clknet_leaf_29_clk),
    .D(_0248_),
    .RESET_B(net147),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4053_ (.CLK(clknet_leaf_29_clk),
    .D(_0249_),
    .RESET_B(net147),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4054_ (.CLK(clknet_leaf_29_clk),
    .D(_0250_),
    .RESET_B(net147),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4055_ (.CLK(clknet_leaf_31_clk),
    .D(_0251_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4056_ (.CLK(clknet_leaf_0_clk),
    .D(_0252_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4057_ (.CLK(clknet_leaf_0_clk),
    .D(_0253_),
    .RESET_B(net152),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4058_ (.CLK(clknet_leaf_2_clk),
    .D(_0254_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4059_ (.CLK(clknet_leaf_2_clk),
    .D(_0255_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4060_ (.CLK(clknet_leaf_2_clk),
    .D(_0256_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4061_ (.CLK(clknet_leaf_2_clk),
    .D(_0257_),
    .RESET_B(net169),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4062_ (.CLK(clknet_leaf_2_clk),
    .D(_0258_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4063_ (.CLK(clknet_leaf_3_clk),
    .D(_0259_),
    .RESET_B(net172),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4064_ (.CLK(clknet_leaf_3_clk),
    .D(_0260_),
    .RESET_B(net171),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4065_ (.CLK(clknet_leaf_3_clk),
    .D(_0261_),
    .RESET_B(net171),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4066_ (.CLK(clknet_leaf_3_clk),
    .D(_0262_),
    .RESET_B(net171),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4067_ (.CLK(clknet_leaf_4_clk),
    .D(_0263_),
    .RESET_B(net175),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_y_out[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4068_ (.CLK(clknet_leaf_29_clk),
    .D(_0264_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4069_ (.CLK(clknet_leaf_29_clk),
    .D(_0265_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4070_ (.CLK(clknet_leaf_29_clk),
    .D(_0266_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4071_ (.CLK(clknet_leaf_29_clk),
    .D(_0267_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4072_ (.CLK(clknet_leaf_29_clk),
    .D(_0268_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4073_ (.CLK(clknet_leaf_30_clk),
    .D(_0269_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4074_ (.CLK(clknet_leaf_28_clk),
    .D(_0270_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4075_ (.CLK(clknet_leaf_28_clk),
    .D(_0271_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4076_ (.CLK(clknet_leaf_28_clk),
    .D(_0272_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4077_ (.CLK(clknet_leaf_28_clk),
    .D(_0273_),
    .RESET_B(net149),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4078_ (.CLK(clknet_leaf_28_clk),
    .D(_0274_),
    .RESET_B(net148),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4079_ (.CLK(clknet_leaf_28_clk),
    .D(_0275_),
    .RESET_B(net150),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4080_ (.CLK(clknet_leaf_28_clk),
    .D(_0276_),
    .RESET_B(net150),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4081_ (.CLK(clknet_leaf_27_clk),
    .D(_0277_),
    .RESET_B(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4082_ (.CLK(clknet_leaf_27_clk),
    .D(_0278_),
    .RESET_B(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4083_ (.CLK(clknet_leaf_0_clk),
    .D(_0279_),
    .RESET_B(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_z_out[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4084_ (.CLK(clknet_leaf_3_clk),
    .D(_0280_),
    .RESET_B(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.is_vector ));
 sky130_fd_sc_hd__dfrtp_2 _4085_ (.CLK(clknet_leaf_22_clk),
    .D(_0281_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4086_ (.CLK(clknet_leaf_22_clk),
    .D(_0282_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4087_ (.CLK(clknet_leaf_22_clk),
    .D(_0283_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4088_ (.CLK(clknet_leaf_22_clk),
    .D(_0284_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.count[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4089_ (.CLK(clknet_leaf_20_clk),
    .D(_0285_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.p_reg[16] ));
 sky130_fd_sc_hd__dfrtp_2 _4090_ (.CLK(clknet_leaf_22_clk),
    .D(_0286_),
    .RESET_B(net154),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[16] ));
 sky130_fd_sc_hd__dfrtp_2 _4091_ (.CLK(clknet_leaf_22_clk),
    .D(_0287_),
    .RESET_B(net159),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[17] ));
 sky130_fd_sc_hd__dfrtp_2 _4092_ (.CLK(clknet_leaf_22_clk),
    .D(_0288_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[18] ));
 sky130_fd_sc_hd__dfrtp_2 _4093_ (.CLK(clknet_leaf_22_clk),
    .D(_0289_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[19] ));
 sky130_fd_sc_hd__dfrtp_2 _4094_ (.CLK(clknet_leaf_22_clk),
    .D(_0290_),
    .RESET_B(net154),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[20] ));
 sky130_fd_sc_hd__dfrtp_2 _4095_ (.CLK(clknet_leaf_20_clk),
    .D(_0291_),
    .RESET_B(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[21] ));
 sky130_fd_sc_hd__dfrtp_2 _4096_ (.CLK(clknet_leaf_20_clk),
    .D(_0292_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[22] ));
 sky130_fd_sc_hd__dfrtp_2 _4097_ (.CLK(clknet_leaf_20_clk),
    .D(_0293_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[23] ));
 sky130_fd_sc_hd__dfrtp_2 _4098_ (.CLK(clknet_leaf_19_clk),
    .D(_0294_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[24] ));
 sky130_fd_sc_hd__dfrtp_2 _4099_ (.CLK(clknet_leaf_19_clk),
    .D(_0295_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[25] ));
 sky130_fd_sc_hd__dfrtp_2 _4100_ (.CLK(clknet_leaf_15_clk),
    .D(_0296_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[26] ));
 sky130_fd_sc_hd__dfrtp_2 _4101_ (.CLK(clknet_leaf_19_clk),
    .D(_0297_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[27] ));
 sky130_fd_sc_hd__dfrtp_2 _4102_ (.CLK(clknet_leaf_14_clk),
    .D(_0298_),
    .RESET_B(net182),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[28] ));
 sky130_fd_sc_hd__dfrtp_2 _4103_ (.CLK(clknet_leaf_19_clk),
    .D(_0299_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[29] ));
 sky130_fd_sc_hd__dfrtp_2 _4104_ (.CLK(clknet_leaf_19_clk),
    .D(_0300_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[30] ));
 sky130_fd_sc_hd__dfrtp_2 _4105_ (.CLK(clknet_leaf_19_clk),
    .D(_0301_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ));
 sky130_fd_sc_hd__dfrtp_2 _4106_ (.CLK(clknet_leaf_25_clk),
    .D(_0302_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4107_ (.CLK(clknet_leaf_25_clk),
    .D(_0303_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4108_ (.CLK(clknet_leaf_25_clk),
    .D(_0304_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4109_ (.CLK(clknet_leaf_23_clk),
    .D(_0305_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4110_ (.CLK(clknet_leaf_24_clk),
    .D(_0306_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4111_ (.CLK(clknet_leaf_22_clk),
    .D(_0307_),
    .RESET_B(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4112_ (.CLK(clknet_leaf_20_clk),
    .D(_0308_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4113_ (.CLK(clknet_leaf_20_clk),
    .D(_0309_),
    .RESET_B(net156),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4114_ (.CLK(clknet_leaf_21_clk),
    .D(_0310_),
    .RESET_B(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4115_ (.CLK(clknet_leaf_24_clk),
    .D(_0311_),
    .RESET_B(net155),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4116_ (.CLK(clknet_leaf_24_clk),
    .D(_0312_),
    .RESET_B(net154),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4117_ (.CLK(clknet_leaf_23_clk),
    .D(_0313_),
    .RESET_B(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4118_ (.CLK(clknet_leaf_26_clk),
    .D(_0314_),
    .RESET_B(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4119_ (.CLK(clknet_leaf_18_clk),
    .D(_0315_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4120_ (.CLK(clknet_leaf_18_clk),
    .D(_0316_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4121_ (.CLK(clknet_leaf_19_clk),
    .D(_0317_),
    .RESET_B(net166),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4122_ (.CLK(clknet_leaf_14_clk),
    .D(_0318_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4123_ (.CLK(clknet_leaf_14_clk),
    .D(_0319_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4124_ (.CLK(clknet_leaf_14_clk),
    .D(_0320_),
    .RESET_B(net182),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4125_ (.CLK(clknet_leaf_14_clk),
    .D(_0321_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4126_ (.CLK(clknet_leaf_14_clk),
    .D(_0322_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4127_ (.CLK(clknet_leaf_14_clk),
    .D(_0323_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.a_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4128_ (.CLK(clknet_leaf_21_clk),
    .D(_0324_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4129_ (.CLK(clknet_leaf_21_clk),
    .D(_0325_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4130_ (.CLK(clknet_leaf_21_clk),
    .D(_0326_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4131_ (.CLK(clknet_leaf_21_clk),
    .D(_0327_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4132_ (.CLK(clknet_leaf_21_clk),
    .D(_0328_),
    .RESET_B(net159),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4133_ (.CLK(clknet_leaf_21_clk),
    .D(_0329_),
    .RESET_B(net159),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4134_ (.CLK(clknet_leaf_21_clk),
    .D(_0330_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4135_ (.CLK(clknet_leaf_21_clk),
    .D(_0331_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4136_ (.CLK(clknet_leaf_21_clk),
    .D(_0332_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4137_ (.CLK(clknet_leaf_21_clk),
    .D(_0333_),
    .RESET_B(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4138_ (.CLK(clknet_leaf_20_clk),
    .D(_0334_),
    .RESET_B(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4139_ (.CLK(clknet_leaf_20_clk),
    .D(_0058_),
    .RESET_B(net157),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4140_ (.CLK(clknet_leaf_20_clk),
    .D(_0059_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4141_ (.CLK(clknet_leaf_30_clk),
    .D(_0056_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4142_ (.CLK(clknet_leaf_30_clk),
    .D(_0057_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.state[1] ));
 sky130_fd_sc_hd__dfstp_2 _4143_ (.CLK(clknet_leaf_10_clk),
    .D(_0000_),
    .SET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_func_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4144_ (.CLK(clknet_leaf_20_clk),
    .D(_0335_),
    .RESET_B(net165),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.mul_start_r ));
 sky130_fd_sc_hd__dfrtp_2 _4145_ (.CLK(clknet_leaf_30_clk),
    .D(_0055_),
    .RESET_B(net146),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.u_eml_gate_top.cordic_start_r ));
 sky130_fd_sc_hd__dfrtp_2 _4146_ (.CLK(clknet_leaf_12_clk),
    .D(_0043_),
    .RESET_B(net190),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_idx_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4147_ (.CLK(clknet_leaf_12_clk),
    .D(_0044_),
    .RESET_B(net190),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_idx_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4148_ (.CLK(clknet_leaf_12_clk),
    .D(_0045_),
    .RESET_B(net190),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_idx_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4149_ (.CLK(clknet_leaf_12_clk),
    .D(_0037_),
    .RESET_B(net190),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4150_ (.CLK(clknet_leaf_12_clk),
    .D(_0038_),
    .RESET_B(net192),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4151_ (.CLK(clknet_leaf_12_clk),
    .D(_0039_),
    .RESET_B(net192),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4152_ (.CLK(clknet_leaf_12_clk),
    .D(_0040_),
    .RESET_B(net192),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4153_ (.CLK(clknet_leaf_13_clk),
    .D(_0041_),
    .RESET_B(net192),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4154_ (.CLK(clknet_leaf_12_clk),
    .D(_0042_),
    .RESET_B(net192),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_bit_count_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4155_ (.CLK(clknet_leaf_13_clk),
    .D(_0046_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4156_ (.CLK(clknet_leaf_13_clk),
    .D(_0047_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4157_ (.CLK(clknet_leaf_11_clk),
    .D(_0048_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4158_ (.CLK(clknet_leaf_11_clk),
    .D(_0049_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4159_ (.CLK(clknet_leaf_11_clk),
    .D(_0050_),
    .RESET_B(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4160_ (.CLK(clknet_leaf_11_clk),
    .D(_0051_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4161_ (.CLK(clknet_leaf_11_clk),
    .D(_0052_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4162_ (.CLK(clknet_leaf_10_clk),
    .D(_0053_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.tx_byte_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4163_ (.CLK(clknet_leaf_10_clk),
    .D(_0004_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(rx_full_ext));
 sky130_fd_sc_hd__dfrtp_2 _4164_ (.CLK(clknet_leaf_9_clk),
    .D(_0001_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.gate_start_reg ));
 sky130_fd_sc_hd__dfrtp_2 _4165_ (.CLK(clknet_leaf_16_clk),
    .D(_0021_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4166_ (.CLK(clknet_leaf_11_clk),
    .D(_0028_),
    .RESET_B(net186),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4167_ (.CLK(clknet_leaf_16_clk),
    .D(_0029_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4168_ (.CLK(clknet_leaf_16_clk),
    .D(_0030_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4169_ (.CLK(clknet_leaf_16_clk),
    .D(_0031_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4170_ (.CLK(clknet_leaf_16_clk),
    .D(_0032_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4171_ (.CLK(clknet_leaf_16_clk),
    .D(_0033_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4172_ (.CLK(clknet_leaf_8_clk),
    .D(_0034_),
    .RESET_B(net176),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4173_ (.CLK(clknet_leaf_9_clk),
    .D(_0035_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4174_ (.CLK(clknet_leaf_11_clk),
    .D(_0036_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4175_ (.CLK(clknet_leaf_9_clk),
    .D(_0022_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4176_ (.CLK(clknet_leaf_8_clk),
    .D(_0023_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4177_ (.CLK(clknet_leaf_8_clk),
    .D(_0024_),
    .RESET_B(net179),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4178_ (.CLK(clknet_leaf_8_clk),
    .D(_0025_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4179_ (.CLK(clknet_leaf_8_clk),
    .D(_0026_),
    .RESET_B(net180),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4180_ (.CLK(clknet_leaf_8_clk),
    .D(_0027_),
    .RESET_B(net181),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_b_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4181_ (.CLK(clknet_leaf_15_clk),
    .D(_0005_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _4182_ (.CLK(clknet_leaf_11_clk),
    .D(_0012_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _4183_ (.CLK(clknet_leaf_15_clk),
    .D(_0013_),
    .RESET_B(net183),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _4184_ (.CLK(clknet_leaf_16_clk),
    .D(_0014_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _4185_ (.CLK(clknet_leaf_8_clk),
    .D(_0015_),
    .RESET_B(net181),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _4186_ (.CLK(clknet_leaf_17_clk),
    .D(_0016_),
    .RESET_B(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _4187_ (.CLK(clknet_leaf_17_clk),
    .D(_0017_),
    .RESET_B(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _4188_ (.CLK(clknet_leaf_17_clk),
    .D(_0018_),
    .RESET_B(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _4189_ (.CLK(clknet_leaf_17_clk),
    .D(_0019_),
    .RESET_B(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _4190_ (.CLK(clknet_leaf_17_clk),
    .D(_0020_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _4191_ (.CLK(clknet_leaf_16_clk),
    .D(_0006_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _4192_ (.CLK(clknet_leaf_16_clk),
    .D(_0007_),
    .RESET_B(net177),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _4193_ (.CLK(clknet_leaf_16_clk),
    .D(_0008_),
    .RESET_B(net181),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _4194_ (.CLK(clknet_leaf_15_clk),
    .D(_0009_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _4195_ (.CLK(clknet_leaf_15_clk),
    .D(_0010_),
    .RESET_B(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _4196_ (.CLK(clknet_leaf_16_clk),
    .D(_0011_),
    .RESET_B(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\u_eml_serial_gate.op_a_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _4197_ (.CLK(clknet_leaf_12_clk),
    .D(_0002_),
    .RESET_B(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(done_ext));
 sky130_fd_sc_hd__dfrtp_2 _4198_ (.CLK(clknet_leaf_12_clk),
    .D(_0054_),
    .RESET_B(net191),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(tx_pending_ext));
 sky130_fd_sc_hd__dfrtp_2 _4199_ (.CLK(clknet_leaf_10_clk),
    .D(_0003_),
    .RESET_B(net188),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(error_ext));
 sky130_fd_sc_hd__buf_2 _4218_ (.A(ser_out),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 _4219_ (.A(busy_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 _4220_ (.A(done_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[2]));
 sky130_fd_sc_hd__buf_2 _4221_ (.A(error_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[3]));
 sky130_fd_sc_hd__buf_2 _4222_ (.A(rx_full_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[4]));
 sky130_fd_sc_hd__buf_2 _4223_ (.A(tx_pending_ext),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uo_out[5]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_0_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_10_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_10_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_11_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_11_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_12_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_12_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_13_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_13_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_14_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_14_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_15_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_15_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_16_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_16_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_17_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_17_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_18_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_18_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_19_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_19_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_1_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_1_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_20_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_20_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_21_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_21_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_22_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_22_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_23_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_23_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_24_clk (.A(clknet_2_1__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_24_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_25_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_25_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_26_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_26_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_27_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_27_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_28_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_28_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_29_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_29_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_2_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_2_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_30_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_30_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_31_clk (.A(clknet_2_0__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_31_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_3_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_3_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_4_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_4_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_5_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_5_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_6_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_6_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_7_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_7_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_8_clk (.A(clknet_2_3__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_8_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_9_clk (.A(clknet_2_2__leaf_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_leaf_9_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_leaf_26_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload1 (.A(clknet_leaf_27_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload10 (.A(clknet_leaf_2_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinvlp_4 clkload11 (.A(clknet_leaf_5_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload12 (.A(clknet_leaf_6_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload13 (.A(clknet_leaf_7_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload14 (.A(clknet_leaf_9_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload15 (.A(clknet_leaf_8_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_8 clkload16 (.A(clknet_leaf_11_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_8 clkload17 (.A(clknet_leaf_12_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_1 clkload18 (.A(clknet_leaf_13_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload19 (.A(clknet_leaf_16_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload2 (.A(clknet_leaf_30_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinvlp_4 clkload3 (.A(clknet_leaf_31_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload4 (.A(clknet_leaf_17_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkbuf_4 clkload5 (.A(clknet_leaf_20_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload6 (.A(clknet_leaf_21_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload7 (.A(clknet_leaf_22_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload8 (.A(clknet_leaf_23_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkinv_2 clkload9 (.A(clknet_leaf_1_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout10 (.A(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout100 (.A(_1875_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net100));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout101 (.A(_1874_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net101));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout102 (.A(_1874_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net102));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout103 (.A(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net103));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout104 (.A(net105),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net104));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout105 (.A(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net105));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout106 (.A(net107),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net106));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout107 (.A(net108),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net107));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout108 (.A(_1714_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net108));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout109 (.A(_0933_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net109));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout11 (.A(_0672_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout110 (.A(net112),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net110));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout111 (.A(net112),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net111));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout112 (.A(_1883_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net112));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout113 (.A(_1876_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net113));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout114 (.A(net115),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net114));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout115 (.A(net116),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net115));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout116 (.A(_1873_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net116));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout117 (.A(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net117));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout118 (.A(net119),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net118));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout119 (.A(_1872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net119));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout12 (.A(_0672_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout120 (.A(net121),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net120));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout121 (.A(_1872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net121));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout122 (.A(net124),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net122));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout123 (.A(net124),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net123));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout124 (.A(net126),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net124));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout125 (.A(net126),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net125));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout126 (.A(_1871_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net126));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout129 (.A(_1686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net129));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout13 (.A(_0671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout130 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net130));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout131 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.b_reg[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net131));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout132 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_mul.full_p[31] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net132));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout133 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net133));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout134 (.A(net135),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net134));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout135 (.A(net136),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net135));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout136 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net136));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout137 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net137));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout138 (.A(\u_eml_serial_gate.u_eml_gate_top.u_shared_cordic.step[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net138));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout139 (.A(net140),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net139));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout14 (.A(_0671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout140 (.A(\u_eml_serial_gate.gate_result[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net140));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout141 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net141));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout142 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net142));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout143 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_work_0[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net143));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout144 (.A(\u_eml_serial_gate.u_eml_gate_top.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net144));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout145 (.A(net150),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net145));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout147 (.A(net150),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net147));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout148 (.A(net150),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net148));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout15 (.A(_0376_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout150 (.A(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net150));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout151 (.A(net153),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net151));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout153 (.A(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net153));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout154 (.A(net159),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net154));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout156 (.A(net158),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net156));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout158 (.A(net159),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net158));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout159 (.A(net160),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net159));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout16 (.A(_0376_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout160 (.A(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net160));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout161 (.A(net163),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net161));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout163 (.A(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net163));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout164 (.A(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net164));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout166 (.A(net167),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net166));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout167 (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net167));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout168 (.A(net175),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net168));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout17 (.A(_0375_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout170 (.A(net175),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net170));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout171 (.A(net174),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net171));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout173 (.A(net175),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net173));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout175 (.A(net194),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net175));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout176 (.A(net178),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net176));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout178 (.A(net181),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net178));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout179 (.A(net181),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net179));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout18 (.A(_0375_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout181 (.A(net194),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net181));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout182 (.A(net184),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net182));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout184 (.A(net194),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net184));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout185 (.A(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net185));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout187 (.A(net189),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net187));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout189 (.A(net194),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net189));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout190 (.A(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net190));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout192 (.A(net193),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net192));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout193 (.A(net194),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net193));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout194 (.A(net1),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net194));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout20 (.A(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout21 (.A(_0807_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout22 (.A(_0807_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout23 (.A(_0372_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout25 (.A(_1413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout26 (.A(_0385_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout27 (.A(_0385_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout28 (.A(_1926_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout29 (.A(_1926_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout30 (.A(_0487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout31 (.A(net32),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout32 (.A(_0487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout33 (.A(net34),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout34 (.A(net37),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout35 (.A(net36),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout36 (.A(net37),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout37 (.A(_0384_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout38 (.A(_1730_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net38));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout39 (.A(_1730_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net39));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout40 (.A(_1592_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net40));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout41 (.A(_1592_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net41));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout42 (.A(_1583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net42));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout43 (.A(_1583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net43));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout44 (.A(_1922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net44));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout45 (.A(_1922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net45));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout46 (.A(_1887_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net46));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout47 (.A(_1887_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net47));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout48 (.A(_1870_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net48));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout49 (.A(_1870_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net49));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout5 (.A(_0676_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout50 (.A(_0949_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net50));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout51 (.A(_0949_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net51));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout52 (.A(net53),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net52));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout53 (.A(_0391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net53));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout54 (.A(_0390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net54));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout55 (.A(_0390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net55));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout56 (.A(_1927_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net56));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout57 (.A(_1927_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net57));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout59 (.A(net60),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net59));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout6 (.A(_0668_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout60 (.A(net61),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net60));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout61 (.A(_1885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net61));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout62 (.A(net63),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net62));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout63 (.A(net64),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net63));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout64 (.A(net65),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net64));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout65 (.A(_0001_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net65));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout66 (.A(_0002_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net66));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout67 (.A(_0979_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net67));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout68 (.A(net69),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net68));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout69 (.A(_0979_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net69));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout7 (.A(_0811_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout70 (.A(_0978_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net70));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout71 (.A(net74),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net71));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout72 (.A(net75),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout74 (.A(_0935_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net74));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout76 (.A(_0934_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net76));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout77 (.A(net78),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net77));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout78 (.A(_0932_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net78));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout79 (.A(_0931_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net79));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout8 (.A(_0577_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout80 (.A(net83),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net80));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout82 (.A(_0931_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net82));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout84 (.A(net85),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net84));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout85 (.A(_0928_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net85));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout86 (.A(_0927_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net86));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout87 (.A(_0927_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net87));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout88 (.A(_0818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net88));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout89 (.A(_0818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net89));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout9 (.A(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout90 (.A(_0580_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net90));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout91 (.A(_0580_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net91));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout92 (.A(net93),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net92));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout93 (.A(_1880_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net93));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout94 (.A(_1878_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net94));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout95 (.A(net97),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net95));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout96 (.A(net97),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net96));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout97 (.A(net99),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net97));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout98 (.A(net99),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net98));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout99 (.A(_1877_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net99));
 sky130_fd_sc_hd__dlygate4sd3_1 hold212 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_mode_r[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net212));
 sky130_fd_sc_hd__dlygate4sd3_1 hold213 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net213));
 sky130_fd_sc_hd__dlygate4sd3_1 hold214 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net214));
 sky130_fd_sc_hd__dlygate4sd3_1 hold215 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net215));
 sky130_fd_sc_hd__dlygate4sd3_1 hold216 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net216));
 sky130_fd_sc_hd__dlygate4sd3_1 hold217 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net217));
 sky130_fd_sc_hd__dlygate4sd3_1 hold218 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net218));
 sky130_fd_sc_hd__dlygate4sd3_1 hold219 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net219));
 sky130_fd_sc_hd__dlygate4sd3_1 hold220 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net220));
 sky130_fd_sc_hd__dlygate4sd3_1 hold221 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net221));
 sky130_fd_sc_hd__dlygate4sd3_1 hold222 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net222));
 sky130_fd_sc_hd__dlygate4sd3_1 hold223 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net223));
 sky130_fd_sc_hd__dlygate4sd3_1 hold224 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net224));
 sky130_fd_sc_hd__dlygate4sd3_1 hold225 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net225));
 sky130_fd_sc_hd__dlygate4sd3_1 hold226 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net226));
 sky130_fd_sc_hd__dlygate4sd3_1 hold227 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net227));
 sky130_fd_sc_hd__dlygate4sd3_1 hold228 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net228));
 sky130_fd_sc_hd__dlygate4sd3_1 hold229 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net229));
 sky130_fd_sc_hd__dlygate4sd3_1 hold230 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net230));
 sky130_fd_sc_hd__dlygate4sd3_1 hold231 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net231));
 sky130_fd_sc_hd__dlygate4sd3_1 hold232 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net232));
 sky130_fd_sc_hd__dlygate4sd3_1 hold233 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net233));
 sky130_fd_sc_hd__dlygate4sd3_1 hold234 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net234));
 sky130_fd_sc_hd__dlygate4sd3_1 hold235 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net235));
 sky130_fd_sc_hd__dlygate4sd3_1 hold236 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net236));
 sky130_fd_sc_hd__dlygate4sd3_1 hold237 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net237));
 sky130_fd_sc_hd__dlygate4sd3_1 hold238 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net238));
 sky130_fd_sc_hd__dlygate4sd3_1 hold239 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net239));
 sky130_fd_sc_hd__dlygate4sd3_1 hold240 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net240));
 sky130_fd_sc_hd__dlygate4sd3_1 hold241 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net241));
 sky130_fd_sc_hd__dlygate4sd3_1 hold242 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net242));
 sky130_fd_sc_hd__dlygate4sd3_1 hold243 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net243));
 sky130_fd_sc_hd__dlygate4sd3_1 hold244 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net244));
 sky130_fd_sc_hd__dlygate4sd3_1 hold245 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net245));
 sky130_fd_sc_hd__dlygate4sd3_1 hold246 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net246));
 sky130_fd_sc_hd__dlygate4sd3_1 hold247 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net247));
 sky130_fd_sc_hd__dlygate4sd3_1 hold248 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net248));
 sky130_fd_sc_hd__dlygate4sd3_1 hold249 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net249));
 sky130_fd_sc_hd__dlygate4sd3_1 hold250 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net250));
 sky130_fd_sc_hd__dlygate4sd3_1 hold251 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net251));
 sky130_fd_sc_hd__dlygate4sd3_1 hold252 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net252));
 sky130_fd_sc_hd__dlygate4sd3_1 hold253 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net253));
 sky130_fd_sc_hd__dlygate4sd3_1 hold254 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net254));
 sky130_fd_sc_hd__dlygate4sd3_1 hold255 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net255));
 sky130_fd_sc_hd__dlygate4sd3_1 hold256 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net256));
 sky130_fd_sc_hd__dlygate4sd3_1 hold257 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net257));
 sky130_fd_sc_hd__dlygate4sd3_1 hold258 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_y_in_r[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net258));
 sky130_fd_sc_hd__dlygate4sd3_1 hold259 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net259));
 sky130_fd_sc_hd__dlygate4sd3_1 hold260 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net260));
 sky130_fd_sc_hd__dlygate4sd3_1 hold261 (.A(\u_eml_serial_gate.u_eml_gate_top.reg_x[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net261));
 sky130_fd_sc_hd__dlygate4sd3_1 hold262 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net262));
 sky130_fd_sc_hd__dlygate4sd3_1 hold263 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net263));
 sky130_fd_sc_hd__dlygate4sd3_1 hold264 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_a_r[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net264));
 sky130_fd_sc_hd__dlygate4sd3_1 hold265 (.A(\u_eml_serial_gate.u_eml_gate_top.mul_b_r[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net265));
 sky130_fd_sc_hd__dlygate4sd3_1 hold266 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_x_in_r[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net266));
 sky130_fd_sc_hd__dlygate4sd3_1 hold267 (.A(\u_eml_serial_gate.u_eml_gate_top.cordic_z_in_r[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net267));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(ui_in[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(ui_in[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(ui_in[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_4 load_slew146 (.A(net145),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net146));
 sky130_fd_sc_hd__clkbuf_4 load_slew149 (.A(net148),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net149));
 sky130_fd_sc_hd__buf_2 load_slew152 (.A(net151),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net152));
 sky130_fd_sc_hd__buf_4 load_slew155 (.A(net154),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net155));
 sky130_fd_sc_hd__clkbuf_4 load_slew157 (.A(net156),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net157));
 sky130_fd_sc_hd__clkbuf_4 load_slew162 (.A(net161),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net162));
 sky130_fd_sc_hd__clkbuf_4 load_slew169 (.A(net168),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net169));
 sky130_fd_sc_hd__buf_2 load_slew172 (.A(net171),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net172));
 sky130_fd_sc_hd__clkbuf_4 load_slew174 (.A(net173),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net174));
 sky130_fd_sc_hd__clkbuf_4 load_slew177 (.A(net176),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net177));
 sky130_fd_sc_hd__clkbuf_4 load_slew180 (.A(net179),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net180));
 sky130_fd_sc_hd__clkbuf_4 load_slew183 (.A(net182),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net183));
 sky130_fd_sc_hd__buf_2 load_slew186 (.A(net185),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net186));
 sky130_fd_sc_hd__clkbuf_2 load_slew191 (.A(net190),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net191));
 sky130_fd_sc_hd__clkbuf_4 load_slew73 (.A(net72),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net73));
 sky130_fd_sc_hd__clkbuf_4 load_slew75 (.A(net74),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net75));
 sky130_fd_sc_hd__clkbuf_4 load_slew81 (.A(net80),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net81));
 sky130_fd_sc_hd__buf_4 load_slew83 (.A(net82),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net83));
 sky130_fd_sc_hd__clkbuf_2 max_cap127 (.A(_1751_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net127));
 sky130_fd_sc_hd__clkbuf_2 max_cap128 (.A(_1743_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net128));
 sky130_fd_sc_hd__clkbuf_2 max_cap19 (.A(_1031_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_2 max_cap58 (.A(_1889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net58));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net195));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net196));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net197));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_198 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net198));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_199 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net199));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_200 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net200));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_201 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net201));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_202 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net202));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net203));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_204 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net204));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_205 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net205));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_206 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net206));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net207));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net208));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_209 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net209));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_210 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net210));
 sky130_fd_sc_hd__conb_1 tt_um_eml_gate_211 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(net211));
 sky130_fd_sc_hd__clkbuf_4 wire165 (.A(net164),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net165));
 sky130_fd_sc_hd__clkbuf_4 wire188 (.A(net187),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net188));
 sky130_fd_sc_hd__buf_1 wire24 (.A(_1842_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(net24));
 assign uio_oe[0] = net;
 assign uio_oe[1] = net195;
 assign uio_oe[2] = net196;
 assign uio_oe[3] = net197;
 assign uio_oe[4] = net198;
 assign uio_oe[5] = net199;
 assign uio_oe[6] = net200;
 assign uio_oe[7] = net201;
 assign uio_out[0] = net202;
 assign uio_out[1] = net203;
 assign uio_out[2] = net204;
 assign uio_out[3] = net205;
 assign uio_out[4] = net206;
 assign uio_out[5] = net207;
 assign uio_out[6] = net208;
 assign uio_out[7] = net209;
 assign uo_out[6] = net210;
 assign uo_out[7] = net211;
endmodule
