;I've really messed up this time.[OLAD];Added eng-sentence  by Nandini  
;mEM isa bAra vAswava meM KarAba_kara cukA hUz.;Added hin-sentence  by Nandini    
(defrule mess0
(declare (salience 5000))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZarAba_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess0  "  ?id "  " ?id1 "  KZarAba_kara  )" crlf))
)

;Commented by Nandini(1-5-14) ; same rule repeated
;I don't want him to mess up his career.
;(defrule mess1
;(declare (salience 4900))
;(id-root ?id mess)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id gadZabadZI_kara));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " mess.clp ;mess1 " ?id "  gadZabadZI_kara )" crlf)) 
;)

;Commented by Nandini(1-5-14) ; same rule repeated
;(defrule mess2
;(declare (salience 4800))
;(id-root ?id mess)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id gadZabadZI_kara));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " mess.clp ;mess2 " ?id "  gadZabadZI_kara )" crlf)) 
;)

;Commented by Nandini(1-5-14) ; same rule repeated
;(defrule mess3
;(declare (salience 4700))
;(id-root ?id mess)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id gadZabadZI_kara));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " mess.clp ;mess3 " ?id "  gadZabadZI_kara )" crlf)) 
;)

(defrule mess4
(declare (salience 4600))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess4  "  ?id "  " ?id1 "  gadZabadZI_kara  )" crlf))
)

(defrule mess5
(declare (salience 4500))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess5   "  ?id "  gadZabadZI_kara )" crlf))
)

(defrule mess6
(declare (salience 4400))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BojanAlaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess6   "  ?id "  BojanAlaya )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;Who is responsible for this mess? [from mail]
;isa gadabadZI ke liye kOna uwwaraxAyI hE?
(defrule mess7
(declare (salience 4450))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess7   "  ?id "  gadZabadZI )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;The kids made a mess in the bathroom.[OLAD]
;baccoM ne snAnaGara meM gaMxagI PElAI.
(defrule mess8
(declare (salience 4450))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMxagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess8   "  ?id "  gaMxagI )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;When my wife left me I was a total mess.[OLAD]
;jaba merI pawnI muJe Coda gaI wo mEM purI waraha pareSAna WA.
(defrule mess9
(declare (salience 4450))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess9   "  ?id "  pareSAna )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;There's a mess of fish down there, so get your lines in the water.[OLAD]
(defrule mess10
(declare (salience 4450))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess10   "  ?id "  Dera )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;I messed around in my first year at college. [OLAD]
;mEMne kAleja meM mere praWama varRa meM bevakUPI kiyA.
(defrule mess11
(declare (salience 5050))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bevakUPI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess11  "  ?id "  " ?id1 "  bevakUPI_kara  )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;We spent the day messing around on the river. [OLAD]
;hamane naxI paraGUmawe hue xina biwAyA.
(defrule mess12
(declare (salience 5050))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-on_saMbanXI  ?id ?id2)
(id-root ?id2 river)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess12  "  ?id "  " ?id1 "  GUma  )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;Who's been messing around with my computer?  [OLAD]
;mere safgaNaka ke sAWa kisane CedaCAda kI hE?
(defrule mess13
(declare (salience 5050))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id2 computer)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CedaCAda_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess13  "  ?id "  " ?id1 "  CedaCAda_kara  )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;I'm sorry to mess you about but there are a few last-minute changes.  [OLAD]
;mEM behaxa xuKI hUz Apako pareSAna karawe hue  paranwu kuCa AKarI minatoM ke parivarwana hEM. 
(defrule mess14
(declare (salience 5050))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess14   "  ?id "  pareSAna_kara  )" crlf))
)

;@@@--- Added by Nandini(2-5-14)
;Don't mess with fireworks.[OLAD] ;parser problem --- Nandini
;patAKe ke sAWa CedaCAda nahIM kIjie.
(defrule mess15
(declare (salience 5050))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_niReXaka  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CedaCAda_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess15   "  ?id "  CedaCAda_kara )" crlf))
)




;"mess","N","1.BojanAlaya"
;Lets eat in the mess.
;--"2.gadZabadZI"
;Please clear the mess.
;--"3.JaMJata"
;He is in a real mess.
;--"4.gaMxagI"
;They asked the kids to clean the mess in the room.
;
;
