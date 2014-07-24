;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-2-2014 (added carry in ?id1)
;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-2-2014 (added fly and leave in ?id1)
;Plane flies. [rajpal]
;विमान उड़ा .
;$$$ Modified by Sonam Gupta MTech IT Banasthali 2013 
;They threatened to blow up the plane if their demands were not met. [Gyannidhi]
;उन्होंने विमान धमाके के कारण टुकडे-टुकडे होने के लिये धमकाया यदि उनकी माँगें पूरी नहीँ हुई . 
(defrule plane0
(declare (salience 5000))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 hijack|blow|fighter|passenger|transport|ticket|crash|catch|take|land|board|pass|fly|leave|carry)
(or(kriyA-subject ?id1 ?id)(kriyA-object  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane0   "  ?id "  vimAna )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-2-2014 (added (kriyA-on_saMbanXI  ? ?id))
;To get on the plane. [rajpal]
;विमान पर चढना .
;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We'll be boarding the plane in about 20 minutes. [Cambridge]
;हम लगभग 20 मिनटों में विमान चढ रहे होंगे . 
(defrule plane1
(declare (salience 4900))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-in_saMbanXI  ?id ?)(kriyA-by_saMbanXI  ? ?id)(kriyA-on_saMbanXI  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane1   "  ?id "  vimAna )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The poet's treatment of the subject lifts it to a mystical plane. [Cambridge]
;विषय का कवि का इलाज एक रहस्यवादी स्तर तक इसको उठाता है . 
(defrule plane2
(declare (salience 4800))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-to_saMbanXI  ? ?id)(viSeRya-from_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane2   "  ?id "  swara )" crlf))
)


(defrule plane3
(declare (salience 4700))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane3   "  ?id "  samawala )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;Plane of thoughts. [Rajpal]
;विचारों का स्तर .
(defrule plane4
(declare (salience 5000))
(id-root ?id plane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plane.clp 	plane4   "  ?id "  swara )" crlf))
)






;default_sense && category=noun	havAI-jahAjZa	0
;"plane","N","1.havAI-jahAjZa"
;Aeroplanes are filled with gasoline.
;--"2.wala"
;A vertical plane was drawn.
;--"3.ranxA"
;The carpenter made the surface of the wood smooth by a plane.
;--"4.canAra"
;Planes have broad leaves && thin bark.
;
;
