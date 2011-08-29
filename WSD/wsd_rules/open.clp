
(defrule open0
(declare (salience 5000))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id opening )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KulI_jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  open.clp  	open0   "  ?id "  KulI_jagaha )" crlf))
)

;"opening","N","1.KulI_jagaha/Cixra"
;There was a small opening between the trees
;--"2.uxaGAtana"
;The opening received good critical reviews
;--"3.sWAna"
;There are few openings in publishing for new graduates            
;
;
(defrule open1
(declare (salience 4900))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " open.clp	open1  "  ?id "  " ?id1 "  Kola  )" crlf))
)

(defrule open2
(declare (salience 4800))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id opening )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Kula))
(assert (id-H_vib_mng ?id ing))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  open.clp  	open2   "  ?id "  Kula )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  open.clp       open2   "  ?id " ing )" crlf))
)

(defrule open3
(declare (salience 4700))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id opening )
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Kola))
(assert (id-H_vib_mng ?id ing))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  open.clp  	open3   "  ?id "  Kola )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  open.clp       open3   "  ?id " ing )" crlf))
)

;Please unfold this map.
;kqpyA isa mAnaciwra ko Kola xeM
(defrule open4
(declare (salience 4600))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp 	open4   "  ?id "  Kola )" crlf))
)

(defrule open5
(declare (salience 4500))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp 	open5   "  ?id "  Kula )" crlf))
)

(defrule open6
(declare (salience 4400))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp 	open6   "  ?id "  Kola )" crlf))
)

(defrule open7
(declare (salience 4300))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp 	open7   "  ?id "  KulA )" crlf))
)

(defrule open8
(declare (salience 4200))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp 	open8   "  ?id "  KulA )" crlf))
)

;"open","Adj","1.KulA"
;The thief escaped through the open gate.
;--"2.niRkapata"
;He was quite open about his reasons for leaving.
;--"3.anirNIwa"
;The matter was discussed && left open for the time being.
;--"4.AramBa_karanA"
;He opened a conversation on the issue of animal rights.
;
;

;Added by sheetal(5-01-10).
(defrule open9
(declare (salience 4950))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 conversation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp      open9   "  ?id "  AramBa_kara )" crlf))
)
;He opened a conversation on the issue of animal rights.



;Dr. Singh said, "We are open to a reasoned debate on all these issues". Added by Sukhada(23-8-11).
(defrule open1o
(declare (salience 4950))
(id-root ?id open)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  open.clp      open10  "  ?id "  KulA_huA )" crlf))
)

