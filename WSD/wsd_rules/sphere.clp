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
;@@@ Added by jagriti(4.2.2014)
;His social sphere is limited.[iit-bombay wordnet] 
;उसका सामाजिक क्षेत्र सीमित है.
;The report runs into five volumes and covers, practically the whole sphere of education.[gyanidhi]
;रिपोर्ट पांच खोडों में है और इसमें शिक्षा का लगभग सारा त्रेत्र शामिल है। 
(defrule sphere1
(declare (salience 4900))
(id-root ?id sphere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1))
(id-root ?id1 social|education|political|research|public|financial)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " sphere.clp    sphere1   "  ?id " kRewra )" crlf))
)

;..............default rule.....
;@@@ Added by jagriti(4.2.2014)
;In fact, a pea is quite a good image for a deformed sphere.[gyanidhi]
;वास्तव में, एक मटर एक विकृत गोले के लिए काफी अच्छी छवि है.
(defrule sphere2
(declare (salience 100))
(id-root ?id sphere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gOlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " sphere.clp    sphere2   "  ?id " gOlA )" crlf))
)

