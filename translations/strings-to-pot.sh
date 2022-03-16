PROJECT=simplayer
FILES="../${PROJECT}"
POTFILE=${PROJECT}.pot
declare -A LANGUAGES
LANGUAGES=([es]=es_ES.UTF-8 [ca]=ca_ES.UTF-8 [en]=en_US.UTF-8)

options="-d ${PROJECT} --from-code=UTF-8 --foreign-user --language=Python --keyword=_ --package-name=${PROJECT}"
options2="--sort-output --force-po --no-location"
if [ -f ${POTFILE} ];then
    options=" -j ${options}"
fi
options="${options} ${options2}"

xgettext ${options} --output=${POTFILE} ${FILES}

for lang in "${!LANGUAGES[@]}"; do
    locale=${LANGUAGES[$lang]}
    mkdir -p locale/${lang}
    pofile=locale/${lang}/${PROJECT}.po
    mofile=locale/${lang}/${PROJECT}.mo
    if [ ! -f ${pofile} ]; then
        msginit --no-translator --locale=${locale} --input=${POTFILE} --output=${pofile}
    else
        msgmerge --update ${options2} --silent ${pofile} ${POTFILE}
    fi
    if [ -f ${pofile} ];then
        msgfmt ${pofile} -o ${mofile}
    fi
done

