
;@@@ Added by jagriti(23.11.2013)
;My watch says 3 o'clock.
;मेरी घड़ी तीन बजे का समय बता रही है .[veena mam]
(defrule say1
(declare (salience 5000))
(id-root ?id say)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 watch)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say1   "  ?id "  bawA )" crlf)
))

;@@@ Added by jagriti(23.11.2013)
;It says in the paper (that) they've found the man who did it.[veena ji]
;इसमें लिखा है कि जिस आदमी ने किया था उसका पता चल गया है .
; It says on the bottle to take three tablets a day.
;बोतल पर लिखा है कि एक दिन में तीन गोलियां लेनी चाहिए .
(defrule say2
(declare (salience 4900))
(id-root ?id say)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-in_saMbanXI ?id ?id1)(kriyA-on_saMbanXI ?id ?id1))
(id-root ?id1 paper|bottle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say2   "  ?id "  liKa )" crlf)
))


;Written by Sukhada, on date 18/03/09, on the basis of Natural Grammar by Scott Thornbury.

;Can I just say a few words?
;She did not say very much.
;What did you say?
;They say you should get up and stretch every half hour.
(defrule say3
(declare (salience 4800))
(id-root ?id say)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say3   "  ?id "  kaha )" crlf)
)
)

;Did Martin say when he was leaving?
;The advert does not say how much it costs.
(defrule say4
(declare (salience 5000))
(id-root ?id say)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1)  when|how|why|who|what|which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say4   "  ?id "  bawA )" crlf)
)
)

;The recipe says you need  two eggs.
;The label says, '100% authentic'.
(defrule say5
(declare (salience 5000))
(id-root ?id say)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1)  recipe|lable|news)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say5   "  ?id "  ke_anusAra )" crlf)
)
)

;At least two are said to be in a critical state.
(defrule say6
(declare (salience 5000))
(id-word ?id said)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1)  to)
(id-root =(+ ?id 2)  be)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawAyA_jA));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  say.clp      say6   "  ?id "  bawAyA_jA)" crlf)
))




