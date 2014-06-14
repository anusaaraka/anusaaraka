
(defrule end0
(declare (salience 5000))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end0  "  ?id "  " ?id1 "  pUrA_ho  )" crlf))
)

;He ended up in the hospital carelessness.
;vaha lAparavAhI kI vajaha se haspawAla meM pUrA ho gayA
(defrule end1
(declare (salience 4900))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) far)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA_Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end1   "  ?id "  xUsarA_Cora )" crlf))
)

;The house is at the far end of ..
(defrule end2
(declare (salience 4800))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end2  "  ?id "  " ?id1 "  samApwa_ho  )" crlf))
)

(defrule end3
(declare (salience 4700))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end3  "  ?id "  " ?id1 "  samApwa_ho  )" crlf))
)

(defrule end4
(declare (salience 4600))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end4   "  ?id "  samApwa_ho )" crlf))
)


;@@@ Added by Pramila(Banasthai University) on 23-10-2013
;For a finite large planar sheet, Eq. (1.33) is approximately true in the middle regions of the planar sheet, away 
;from the ends.
;किसी परिमित बडी समतलीय चादर के लिए समीकरण ( 1.33 ) , सिरों से दूर समतलीय चादर के मध्यवर्ती क्षेत्रों में सन्निकटतः सत्य है . 

;Modified by Pramila(BU) on 06-02-2014
(defrule end5
(declare (salience 4600))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-from_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end5   "  ?id "  sirA )" crlf))
)


;@@@ Added by Pramila(Banasthai University) on 10-03-2014
;For example the temperature graduations of a thermometer may be inadequately calibrated it may read 104 ° C at the boiling point of water
; at STP whereas it should read 100 ° C in a vernier callipers the zero mark of vernier scale may not coincide with the zero mark of the 
;main scale or simply an ordinary metre scale may be worn off at one end.   ncert
; उदाहरणार्थ, हो सकता है कि किसी तापमापी का अंशाङ्कन ठीक न हुआ हो (परिणामस्वरूप यह STP पर जल का क्वथनाङ्क 100 °C के स्थान पर 104 °C पढता हो); किसी वर्नियर कैलिपर्स में
; दोनों जबडे मिलाने पर वर्नियर पैमाने का शून्य चिह्न मुख्य पैमाने के शून्य चिह्न के सम्पाती न हों, या किसी साधारण पैमाने का एक सिरा घिसा हुआ हो..
;Modified by Pramila(BU) on 06-02-2014
(defrule end6
(declare (salience 4600))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id)
(id-root ?id1 wear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end6   "  ?id "  sirA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 28-10-2013
;She came to an untimely end.  ;oald
;usakI asAmayika mqwyu huI.
;He met his end at battle of waterloo.  ;oald
;vAtaralU kI ladAI meM usakI mqwyu ho gaI.
(defrule end7
(declare (salience 5000))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ?id1 ?id)(kriyA-object  ?id1 ?id))
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwyu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end7   "  ?id "  mqwyu )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 28-10-2013
;He joined the society for political ends. ;oald
;vaha rAjanIwika uxxeSya se saMsWA meM sammiliwa huA..
(defrule end8
(declare (salience 5000))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(kriyA-for_saMbanXI  ?id2 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxeSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end8   "  ?id "  uxxeSya )" crlf))
)

;This is the end of the street.
;yaha galI kA anwa hE.
(defrule end9
(declare (salience 4000))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-from_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end9   "  ?id "  anwa )" crlf))
)

;@@@ Added by Pramila(BU) on 20-01-2014
;On this note we end our journey of the Universe.         ;gyannindhi
;इस टिप्पणी पर हम ब्रह्माण्ड की हमारी यात्रा समाप्त करते हैं .
(defrule end10
(declare (salience 4900))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end10   "  ?id "  samApwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;The cat was at the extreme end of the branch.          ;shiksharthi
;बिल्ली शाखा के अंतिम छोर पर थी.
(defrule end11
(declare (salience 4900))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ?kri ?id)
(viSeRya-of_saMbanXI  ?id ?id2)
(viSeRya-viSeRaNa  ?id ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end11   "  ?id "  Cora )" crlf))
)
