.class synthetic Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;
.super Ljava/lang/Object;
.source "PropertyInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Lae/javax/xml/bind/annotation/XmlNsForm;->values()[Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    :try_start_0
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-virtual {v1}, Lae/javax/xml/bind/annotation/XmlNsForm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->UNQUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-virtual {v1}, Lae/javax/xml/bind/annotation/XmlNsForm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl$1;->$SwitchMap$ae$javax$xml$bind$annotation$XmlNsForm:[I

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-virtual {v1}, Lae/javax/xml/bind/annotation/XmlNsForm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
