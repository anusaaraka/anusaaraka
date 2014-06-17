
(defrule pound0
(declare (salience 5000))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pounding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pound.clp  	pound0   "  ?id "  Xvani )" crlf))
)

;"pounding","N","1.Xvani"
;There was a consistent pounding in his head.
;
(defrule pound1
(declare (salience 4900))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pONda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound1   "  ?id "  pONda )" crlf))
)

;"pound","N","1.pONda{eka_mApa}"
;I have twenty pounds in my pocket. 
;Apples are sold by the pound.
;
(defrule pound2
(declare (salience 4800))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound2   "  ?id "  mAra )" crlf))
)

;"pound","V","1.mAranA"
;Someone was pounding at the door.
;--"2.XadakanA"
;My heart was pounding.
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;There is a big pound for the cattles. [rajpal]
;मवेशियों के लिये एक बड़ा बाड़ा है  .
(defrule pound3
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 cattle|bull|cow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound3   "  ?id "  bAdZA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;We made a pound on his back. [rajpal]
;हमने उसकी पीठ पर प्रहार किया  .
(defrule pound4
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?verb ?id)
(kriyA-on_saMbanXI  ?verb ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound4   "  ?id "  prahAra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;We pound grain into flour. [rajpal]
;हमने अनाज को आटे में पीसा .
(defrule pound5
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 grain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound5   "  ?id "  pIsa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;Seeing the police the thief's heart began to pound. [rajpal]
;यह मशीन खराब हालत में है  .
(defrule pound6
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?verb ?id1)
(kriyA-to_saMbanXI  ?verb ?id)
(id-root ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound6   "  ?id "  XadZaka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;Someone was pounding on the door. [cambridge]
;कोई दरवाजे पर खटखटा रहा था .
(defrule pound7
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KataKatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound7   "  ?id "  KataKatA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;My heart was pounding as I walked out onto the stage. [cambridge]
;मेरा दिल धड़क रहा था जब मैं मंच पर चल कर गया .
(defrule pound8
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound8   "  ?id "  XadZaka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;He pounded up the stairs. [cambridge]
;वह सीड़ीयों पर भागा  .
(defrule pound9
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pound.clp  pound9  "  ?id "  " ?id1 "  BAga  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;She pounded along the corridor after him. [oald]
;वह गलियारे में उसके पीछे चली .
(defrule pound10
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-along_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound10   "  ?id "  cala )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;The blood was pounding in his ears. [oald]
;उसके कानों में खून धमक रहा था  .
(defrule pound11
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 blood)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xamaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound11   "  ?id "  Xamaka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;Her head began to pound. [oald]
;उसका सिर घूम रहा था  .
(defrule pound12
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?verb ?id1)
(kriyA-to_saMbanXI  ?verb ?id)
(id-root ?id1 head)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound12   "  ?id "  GUma )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;Rock music was pounding out from the jukebox. [oald]
;रौक संगीत ज्यूकबोक्स में से बज रहा था .
(defrule pound13
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pound.clp  pound13  "  ?id "  " ?id1 "  baja  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;He came pounding down the stairs.  [M-W]
;वह सीड़ीयों से नीचे आया  .
(defrule pound14
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound14   "  ?id "  A )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;He pounded away all night at his computer, writing the report.  [M-W]
;उसने पूरी रात अपने कम्प्यूटर पर मेहनत की, रिपोर्ट लिखने में  .
(defrule pound15
(declare (salience 5500))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaka  ?noun ?id1)
(kriyA-kAlavAcI  ?id ?noun)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pound.clp  pound15  "  ?id "  " ?id1 "  mehanawa_kara  )" crlf))
)
