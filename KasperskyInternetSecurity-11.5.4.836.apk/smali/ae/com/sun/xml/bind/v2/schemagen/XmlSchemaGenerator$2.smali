.class synthetic Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;
.super Ljava/lang/Object;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

.field static final synthetic $SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

.field static final synthetic $SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1505
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->values()[Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I

    :try_start_0
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->LAX:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->SKIP:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->STRICT:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    .line 911
    :goto_2
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->values()[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    :try_start_3
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    .line 749
    :goto_7
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/core/ID;->values()[Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

    :try_start_8
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/ID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/ID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->NONE:Lae/com/sun/xml/bind/v2/model/core/ID;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/ID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    .line 911
    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    .line 1505
    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
