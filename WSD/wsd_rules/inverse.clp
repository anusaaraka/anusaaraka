;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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

;(vi) Finally, Gauss's law is based on the inverse square dependence on distance contained in the Coulomb's law.[PHYSICS]
;( vi ) अन्त में , गाउस नियम कूलॉम नियम में अन्तर्निहित दूरी पर व्युत्क्रम वर्ग निर्भरता पर आधारित है .
;Any violation of Gauss's law will indicate departure from the inverse square law.[PHYSICS]
;गाउस नियम का कोई उल्लङ्घन व्युत्क्रम वर्ग नियम से विचलन को सङ्केत करेगा .
(defrule inverse0	
(declare (salience 3000))
(id-root ?id inverse)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ? ?id)(viSeRya-det_viSeRaNa ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyuwkrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inverse.clp 	inverse0   "  ?id "  vyuwkrama )" crlf))
)

;XXXXXXXXXXXXXXX DEFAULT XXXXXXXXXXXXXXXXX
;A person's wealth is often in inverse proportion to their happiness.[oald]
;व्यक्ति का धन अक्सर  उनकी खुशी के प्रतिलोम अनुपात में होता है . 
(defrule inverse2	
(declare (salience 2500))
(id-root ?id inverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiloma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inverse.clp 	inverse2   "  ?id "  prawiloma )" crlf))
)

;A person's wealth is often in inverse proportion to their happiness.[oald]
;व्यक्ति का धन अक्सर  उनकी खुशी के प्रतिलोम अनुपात में होता है . 
(defrule inverse3
(declare (salience 2000))
(id-root ?id inverse)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiloma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inverse.clp 	inverse3   "  ?id "  prawiloma )" crlf))
)
