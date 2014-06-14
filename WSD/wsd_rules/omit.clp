;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;@@@ Added by Pramila(BU) on 02-04-2014
;She omitted to mention that they were staying the night.   ;oald
;वह बताना भूल गई कि वे रात में रुक रहे थे.
(defrule omit0
(declare (salience 4800))
(id-root ?id omit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " omit.clp 	omit0   "  ?id "BUla_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
;People were surprised that Smith was omitted from the team.   ;oald
;लोग आश्चर्यचकित थे कि स्मिथ टीम से निकाल दिया गया. 
(defrule omit1
(declare (salience 4800))
(id-root ?id omit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " omit.clp 	omit1   "  ?id "nikAla_xe )" crlf))
)


;-----------------default rules------------
;@@@ Added by Pramila(BU) on 02-04-2014
;If you are a student, you can omit questions 16–18.   ;oald
;यदि तुम एक छात्र हो , तुम 16-18 प्रश्न छोड़ सकते हो
(defrule omit2
(declare (salience 100))
(id-root ?id omit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " omit.clp 	omit2   "  ?id "CodZa )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
(defrule omit3
(declare (salience 0))
(id-root ?id omit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " omit.clp 	omit3   "  ?id "CodZa )" crlf))
)
