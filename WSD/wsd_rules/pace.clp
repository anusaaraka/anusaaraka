;Added by Sonam Gupta MTech IT Banasthali 2013
;When she thought she heard someone following her, she quickened her pace. [Cambridge]
;जब उसे लगा कि कोई उसका पीछा कर रहा है तो उसने उसकी चाल जल्दी कर डी . 
(defrule pace0
(declare (salience 5000))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 quicken|quick)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace0   "  ?id "  cAla )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;For many years this company has set the pace in the communications industry. [Cambridge]
;बहुत सारे वर्षों तक यह कम्पनी सूचना उद्योग में प्रगति योजित कर चुकी है . 
(defrule pace1
(declare (salience 4900))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 set)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace1   "  ?id "  pragawi )" crlf))
)



;Added by Sonam Gupta MTech IT Banasthali 2013
;A pace bowler. [OALD]
;एक तेज गति गेंदबाज.
(defrule pace2
(declare (salience 4800))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 bowler|ball)
(kriyA-subject  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace2   "  ?id "  weja_gawi )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 12-3-2014 (added furious in ?id1)
;She drove off at a furious pace.
;TRANSLATION NEEDED
;Added by Sonam Gupta MTech IT Banasthali 2013
;I prefer the relaxed pace of life in the country.
;मैं आधुनिक जीवन की गति को पसन्द नहीं करता हूँ . 
(defrule pace3
(declare (salience 4700))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 happen|occur|life|walk|gather|rapid|own|stand|lack|blister|furious)
(or(kriyA-at_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-object  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace3   "  ?id "  gawi )" crlf))
)

(defrule pace4
(declare (salience 4600))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace4   "  ?id "  kaxama )" crlf))
)

;"pace","N","1.kaxama"
;Two paces forward from this point is the meeting place.
;--"2.gawi"
;He was walking at a slow pace.
;
(defrule pace5
(declare (salience 4500))
(id-root ?id pace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahalakaxamI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pace.clp 	pace5   "  ?id "  cahalakaxamI_kara )" crlf))
)

;"pace","V","1.cahalakaxamI_karanA"
;He was pacing up && down the platform.
;
