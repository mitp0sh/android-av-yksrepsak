.class synthetic Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;
.super Ljava/lang/Object;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

.field static final synthetic $SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 846
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->values()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    :try_start_0
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->TRANSIENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ANY_ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->VALUE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$impl$ClassInfoImpl$PropertyGroup:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    .line 335
    :goto_6
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->values()[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    :try_start_7
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    .line 846
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
