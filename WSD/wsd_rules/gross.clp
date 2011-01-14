
(defrule gross0
(declare (salience 5000))
(id-root ?id gross)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gross.clp 	gross0   "  ?id "  sWUla )" crlf))
)

(defrule gross1
(declare (salience 4900))
(id-root ?id gross)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaxxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gross.clp 	gross1   "  ?id "  BaxxA )" crlf))
)

;"gross","Adj","1.BaxxA"
;Stop making such gross errors.
;
;LEVEL 
;Headword : gross
;
;Examples --
;
;
;"sWUlakAya"
;Meeta is not just fat, she is simply gross.
;mIwA sirPa motI hI nahIM hE, vaha sWUlakAya hE.
;
;"sWUla"
;They both like to indulge in grosser pleasures.
;ve xonoM hI  sWUla suKoM meM dUbanA pasanxa karawe hEM.
;
;"apariRkqwa"
;It is often quite embarrasing in her presence. She uses such gross language.
;usakI upasWiwi aksara kAPI saMkocapUrNa howI hE. vaha iwanI 
;
;"motI"
;The article is full of gross errors.
;leKa motI-motI galwiyoM se BarA hE.
;
;"kula"
;His gross income is about 50,000/-.
;usakI kula Aya lagaBaga 50,000/- ru. hE.
;
;"grOYsa{eka_sO_cOvAlIsa_vaswuoM_kA_samUha}"
;He bought two gross of lemons.
;usane xo grOYsa nIMbU KarIxe.
;
;
;Upara xiye uxAharaNoM se 'grOYsa' Sabxa kA mUla arWa 'sWUla' nikalawA hE. nimna anwarnihiwa sUwra se yaha spaRta hE -
;
;                          sWUla
;                            |
;                   |--------|---------|
;          SArIrika  |  parimANa |    lakRaNA|
;                   |        |         |
;                 motA       kula      apariRkqwa 
;             (bqhaw Akqwi) (sampUrNa)     (pUrA, binA pariRkAra ke)
;                                     pariRkAra karane meM kuCa hissA nikala jAwA hE.       
;
;sUwra : sWUla^apariRkqwa
