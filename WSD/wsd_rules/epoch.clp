;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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
;The death of the emperor marked the end of an epoch in the country's history.     ;oald
;सम्राट की मृत्यु ने देश के इतिहास में एक युग के अन्त को चिन्हित किया.
;The president said that his country was moving into a new epoch which would be one of lasting peace.            ;cald
;राष्ट्रपति ने कहा कि अपना देश क नए युग में परिवर्तित हो रहा था जो स्थायी शांति में से एक होगा.
(defrule epoch0
(declare (salience 4900))
(id-root ?id epoch)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(and(kriyA-into_saMbanXI  ?id2 ?id)(viSeRya-viSeRaNa  ?id ?id1)))
(id-root ?id1 end|new)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  epoch.clp 	epoch0   "  ?id " yuga  )" crlf))
)


;If it is a relic of the early epochs why does it not carry clear imprints of the events that led to the formation of galaxies?
;अगर यह प्रारंभिक काल का स्मृति-चिन्ह है तो इससे उन घटनाओं के बारे में प्रमाण क्यों नहीं मिलता, जिसकी वजह से आकाशगंगाओं का निर्माण हुआ।
(defrule epoch1
(declare (salience 4000))
(id-root ?id epoch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  epoch.clp 	epoch1   "  ?id " kAla  )" crlf))
)
