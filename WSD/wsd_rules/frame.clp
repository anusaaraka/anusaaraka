
(defrule frame0
(declare (salience 5000))
(id-root ?id frame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frame.clp 	frame0   "  ?id "  DAzcA )" crlf))
)

(defrule frame1
(declare (salience 4900))
(id-root ?id frame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frame.clp 	frame1   "  ?id "  rUpa_xe )" crlf))
)

;default_sense && category=verb	cAroM_ora_ho	0
;"frame","V","1.cAroM_ora_honA"
;A dense mass of black hair framed her face
;--"2.SabxoM_meM_bAzXanA"
;A  wrtiers frame the stroy/plan in a systamatic order.
;--"3.JUTe_Aropa_lagAnA"
;He maintained his innocence && claimed that he had been framed.
;
;LEVEL 
;
;
;Headword : frame
; 
;Examples --
;
;"frame","N","1.cOKata"   ----- < DAzcA
;The door frames need not be made of wood.
;--"2.DAzcA
;The main frame of the aircraft is ready.
;--"3.Prema{caSme_kA}"     ----- < DAzcA
;I broke the frame of my spectacles.
;--"4.xAyarA       ------ < DAzcA
;Try to stick to the time frame assigned for this job.
;
;"frame","N","1.cOKata"   --------- < DAzcA
;The door frames are made of teak wood.
;
;"frame","V","1.cAroM_ora_honA"    ------- < DAzcA
;A dense mass of black hair framed her face
;--"2.SabxoM_meM_bAzXanA"    ------ < DAzce meM bAzXanA < DAzcA
;A  wrtiers frame the stroy/plan in a systamatic order.
;--"3.JUTe_Aropa_lagAnA"   ------ < cAroM ora honA < DAzcA 
;He maintained his innocence && claimed that he had been framed.
;--------------------------------------------------------------------
;
;sUwra : cOKata[<DAzcA`]
;
;     saBI arWa DAzcA ke viswAra ke rUpa meM xeKe jA sakawe hEM . 
;kisI BI cIja kA eka DAzcA howA hE . jo usake cAroM ora Gere usa vaswu ko 
;aXikawara xiKAwA hE . DAzcA kahane se eka rUpareKA nirmiwa howI hE . jo vaswuwaH 
;vaswu ke bAhya Akqwi ke rUpa meM xeKI jA sakawI hE . 
;
;upariliKiwa vAkyoM ke AXAra para sUwra-vivaraNa--
;-- saBI saMjFAvAkya DAzce ke kahane se spaRta ho sakawe hEM . 
;   - cOKata eka DAzcA hE (kivAda kA) . 
;
;   - caSme ke jisa BAga ko Prema kahawe hEM . vaha caSme ke DAzce ke rUpa meM xeKA 
;     jAwA hE . 
;
;   - xAyarA eka DAzcA hI howA hE . jahAz waka hama socawe hEM, usakA eka DAzcA 
;     hI hamArI buxXi meM banawA hE . 
;    
;-- kriyA-SabxoM ke lie--
;   - DAzce kA cAroM ora honA spaRta hE . rUpareKA cAroM ora kI hI banawI hE .
;
;   - SabxoM ke DAzce ke rUpa meM jaba kisI cIja yA viRaya ko raKA jAwA hE wo 
;     vaha SabxoM kA DAzcA usa cIja yA viRaya ko anyoM ke lie prakata karawA hE . 
;     isase `SabxoM meM bAzXanA' isa Sabxa kA prayoga .
;
;   - kisI vyakwi ko lAMCiwa kiyA jAwA hE wo usake cAroM ora JUTe lAMCanoM yA 
;     AropoM kA jAla(DAzcA) KadA kiyA jAwA hE, jo vAswavika lage . isase 
;     `JUTe Aropa lagAnA' ke arWa meM isa Sabxa kA prayoga .
;
; 
;
