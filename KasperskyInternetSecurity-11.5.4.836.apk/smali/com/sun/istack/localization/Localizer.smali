.class public Lcom/sun/istack/localization/Localizer;
.super Ljava/lang/Object;
.source "Localizer.java"


# instance fields
.field private final _locale:Ljava/util/Locale;

.field private final _resourceBundles:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/istack/localization/Localizer;-><init>(Ljava/util/Locale;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sun/istack/localization/Localizer;->_locale:Ljava/util/Locale;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/istack/localization/Localizer;->_resourceBundles:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private getDefaultMessage(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;
    .locals 5
    .param p1, "l"    # Lcom/sun/istack/localization/Localizable;

    .prologue
    .line 143
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "args":[Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[failed to localize] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz v0, :cond_2

    .line 149
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sun/istack/localization/Localizer;->_locale:Ljava/util/Locale;

    return-object v0
.end method

.method public localize(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;
    .locals 12
    .param p1, "l"    # Lcom/sun/istack/localization/Localizable;

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "key":Ljava/lang/String;
    sget-object v10, Lcom/sun/istack/localization/Localizable;->NOT_LOCALIZABLE:Ljava/lang/String;

    if-ne v7, v10, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getArguments()[Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/String;

    .line 137
    :goto_0
    return-object v10

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getResourceBundleName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "bundlename":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/sun/istack/localization/Localizer;->_resourceBundles:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    .line 81
    .local v2, "bundle":Ljava/util/ResourceBundle;
    if-nez v2, :cond_2

    .line 83
    :try_start_1
    iget-object v10, p0, Lcom/sun/istack/localization/Localizer;->_locale:Ljava/util/Locale;

    invoke-static {v3, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 108
    :cond_1
    :goto_1
    :try_start_2
    iget-object v10, p0, Lcom/sun/istack/localization/Localizer;->_resourceBundles:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    if-nez v2, :cond_3

    .line 112
    invoke-direct {p0, p1}, Lcom/sun/istack/localization/Localizer;->getDefaultMessage(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 84
    :catch_0
    move-exception v4

    .line 92
    .local v4, "e":Ljava/util/MissingResourceException;
    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 93
    .local v6, "i":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_1

    .line 94
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 97
    .local v0, "alternateBundleName":Ljava/lang/String;
    :try_start_3
    iget-object v10, p0, Lcom/sun/istack/localization/Localizer;->_locale:Ljava/util/Locale;

    invoke-static {v0, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_1

    .line 101
    :catch_1
    move-exception v5

    .line 103
    .local v5, "e2":Ljava/util/MissingResourceException;
    :try_start_4
    invoke-direct {p0, p1}, Lcom/sun/istack/localization/Localizer;->getDefaultMessage(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 115
    .end local v0    # "alternateBundleName":Ljava/lang/String;
    .end local v4    # "e":Ljava/util/MissingResourceException;
    .end local v5    # "e2":Ljava/util/MissingResourceException;
    .end local v6    # "i":I
    :cond_3
    if-nez v7, :cond_4

    .line 116
    const-string v7, "undefined"
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_3

    .line 120
    :cond_4
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v9

    .line 127
    .local v9, "msg":Ljava/lang/String;
    :goto_2
    :try_start_6
    invoke-interface {p1}, Lcom/sun/istack/localization/Localizable;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v10, v1

    if-ge v6, v10, :cond_6

    .line 129
    aget-object v10, v1, v6

    instance-of v10, v10, Lcom/sun/istack/localization/Localizable;

    if-eqz v10, :cond_5

    .line 130
    aget-object v10, v1, v6

    check-cast v10, Lcom/sun/istack/localization/Localizable;

    invoke-virtual {p0, v10}, Lcom/sun/istack/localization/Localizer;->localize(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v6

    .line 128
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 121
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v9    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 123
    .restart local v4    # "e":Ljava/util/MissingResourceException;
    const-string v10, "undefined"

    invoke-virtual {v2, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 133
    .end local v4    # "e":Ljava/util/MissingResourceException;
    .restart local v1    # "args":[Ljava/lang/Object;
    .restart local v6    # "i":I
    :cond_6
    invoke-static {v9, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v8

    .local v8, "message":Ljava/lang/String;
    move-object v10, v8

    .line 134
    goto :goto_0

    .line 136
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v6    # "i":I
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 137
    .restart local v4    # "e":Ljava/util/MissingResourceException;
    invoke-direct {p0, p1}, Lcom/sun/istack/localization/Localizer;->getDefaultMessage(Lcom/sun/istack/localization/Localizable;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method
