;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by Jagriti
;He succeeded his father as editor of the paper.
;उन्होंने समाचार पत्र के संपादक के रूप में अपने पिता का स्थान ग्रहण किया.
(defrule succeed0
(declare (salience 5000))
(id-root ?id succeed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-as_saMbanXI  ?id ?id1)(viSeRya-as_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna_grahaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  succeed.clp 	succeed0   "  ?id "  sWAna_grahaNa_kara)" crlf))
)

;@@@ Added by Jagriti
;.....................Default rule...................
;She could not succeed in the last paper .
;वह पिछले पेपर में सफल नहीं हो सकता.
(defrule succeed2
(declare (salience 4800))
(id-root ?id succeed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  succeed.clp 	succeed2   "  ?id "  saPala_ho)" crlf))
)

;@@@ Added by Jagriti
;I am sure he has the firm determination to succeed as an actor .
;मुझे लगता है वह एक अभिनेता के रूप में सफल होने के लिए दृढ़ संकल्प है .
(defrule succeed3
(declare (salience 4700))
(id-root ?id succeed)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  succeed.clp 	succeed3   "  ?id "  saPala_ho)" crlf))
)

