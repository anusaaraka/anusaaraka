
;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;His motives were pure.[oald]
;उनके इरादे नेक थे .
(defrule pure2
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 motive|reason|purpose|aim|intention)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id neka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure2   "  ?id "  neka )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-3-2014 (added theatre|speculation|nonsence|intuition|instinct|coinsidence|luck|fiction in ?id1)
;Here tears were pure theatre. [oald]
;उसके आँसू पूर्णतयाः नकली थे .
;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;They met by pure chance.[oald]
;वे पूर्णतयाः भाग्य से मिले .
;She laughed with pure joy.[oald]
;वह पूत्णतयाः खुशी से हँसी .
(defrule pure3
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 chance|joy|theatre|speculation|nonsence|intuition|instinct|coinsidence|luck|fiction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawayAH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure3   "  ?id "  pUrNawayAH )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;Classical dance in its purest form requires symmetry and balance. [oald]
;शास्त्रिय नृत्य को अपने विशुद्ध रूप में समानता और संतुलन की आवश्यक्ता होती है .
(defrule pure4
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 form|lookstyle|method|manner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure4   "  ?id "  viSuxXa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;To lead a pure life. [oald]
;एक निर्मल जीवन जीना .
(defrule pure5
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 life|soul|heart|man|being|intention|motive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirmala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure5   "  ?id "  nirmala )" crlf))
)


;***************************DEFAULT RULES****************************

(defrule pure0
(declare (salience 0))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure0   "  ?id "  SuxXa )" crlf))
)

(defrule pure1
(declare (salience 0))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure1   "  ?id "  SuxXa )" crlf))
)

;"pure","Adj","1.SuxXa"
;The acqua guard provides with pure water.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pure3
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 chance|joy|theatre|speculation|nonsence|intuition|instinct|coinsidence|luck|fiction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawayAH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   sub_samA_pure3   "   ?id " pUrNawayAH )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pure3
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 chance|joy|theatre|speculation|nonsence|intuition|instinct|coinsidence|luck|fiction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawayAH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   obj_samA_pure3   "   ?id " pUrNawayAH )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pure4
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 form|lookstyle|method|manner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   sub_samA_pure4   "   ?id " viSuxXa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pure4
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 form|lookstyle|method|manner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   obj_samA_pure4   "   ?id " viSuxXa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pure5
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 life|soul|heart|man|being|intention|motive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirmala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   sub_samA_pure5   "   ?id " nirmala )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pure5
(declare (salience 4000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 life|soul|heart|man|being|intention|motive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirmala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pure.clp   obj_samA_pure5   "   ?id " nirmala )" crlf))
)
