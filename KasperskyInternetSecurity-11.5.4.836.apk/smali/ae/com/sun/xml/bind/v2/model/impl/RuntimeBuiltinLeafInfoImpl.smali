.class public abstract Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;
.source "RuntimeBuiltinLeafInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;
.implements Lae/com/sun/xml/bind/v2/runtime/Transducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;,
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$UUIDImpl;,
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;,
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;",
        "Lae/com/sun/xml/bind/v2/runtime/Transducer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DATE:Ljava/lang/String; = "date"

.field public static final LEAVES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final MAP_ANYURI_TO_URI:Ljava/lang/String; = "mapAnyUriToUri"

.field public static final STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final builtinBeanInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

.field private static final xmlGregorianCalendarFieldRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final xmlGregorianCalendarFormatString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 192
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->LEAVES:Ljava/util/Map;

    .line 215
    const-string v6, "mapAnyUriToUri"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const/16 v6, 0xa

    new-array v4, v6, [Ljavax/xml/namespace/QName;

    const-string v6, "string"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v11

    const-string v6, "anySimpleType"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v12

    const-string v6, "normalizedString"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v13

    const-string v6, "anyURI"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v14

    const-string v6, "token"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v15

    const/4 v6, 0x5

    const-string v7, "language"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "Name"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "NCName"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "NMTOKEN"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "ENTITY"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    .line 238
    .local v4, "qnames":[Ljavax/xml/namespace/QName;
    :goto_0
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;

    const-class v7, Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImplImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v5, "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$1;

    const-class v7, Ljava/lang/Character;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "unsignedShort"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$1;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$2;

    const-class v7, Ljava/util/Calendar;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$2;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$3;

    const-class v7, Ljava/util/GregorianCalendar;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$3;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$4;

    const-class v7, Ljava/util/Date;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$4;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$5;

    const-class v7, Ljava/io/File;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "string"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$5;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;

    const-class v7, Ljava/net/URL;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "anyURI"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v6, "mapAnyUriToUri"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 329
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$7;

    const-class v7, Ljava/net/URI;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "string"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$7;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$8;

    const-class v7, Ljava/lang/Class;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "string"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$8;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;

    const-class v7, Ljavax/activation/DataHandler;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "base64Binary"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;

    const-class v7, Ljavax/xml/transform/Source;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "base64Binary"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;

    const-class v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    const/16 v8, 0x9

    new-array v8, v8, [Ljavax/xml/namespace/QName;

    const-string v9, "anySimpleType"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v12

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v13

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v14

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    aput-object v9, v8, v15

    const/4 v9, 0x5

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v3, "primaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->STRING:Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$12;

    const-class v7, Ljava/lang/Boolean;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "boolean"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$12;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;

    const-class v7, [B

    new-array v8, v13, [Ljavax/xml/namespace/QName;

    const-string v9, "base64Binary"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "hexBinary"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$14;

    const-class v7, Ljava/lang/Byte;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "byte"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$14;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$15;

    const-class v7, Ljava/lang/Short;

    new-array v8, v13, [Ljavax/xml/namespace/QName;

    const-string v9, "short"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "unsignedByte"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$15;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$16;

    const-class v7, Ljava/lang/Integer;

    new-array v8, v13, [Ljavax/xml/namespace/QName;

    const-string v9, "int"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "unsignedShort"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$16;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$17;

    const-class v7, Ljava/lang/Long;

    new-array v8, v13, [Ljavax/xml/namespace/QName;

    const-string v9, "long"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "unsignedInt"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$17;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$18;

    const-class v7, Ljava/lang/Float;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "float"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$18;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$19;

    const-class v7, Ljava/lang/Double;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "double"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$19;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$20;

    const-class v7, Ljava/math/BigInteger;

    const/4 v8, 0x6

    new-array v8, v8, [Ljavax/xml/namespace/QName;

    const-string v9, "integer"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "positiveInteger"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "negativeInteger"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v13

    const-string v9, "nonPositiveInteger"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v14

    const-string v9, "nonNegativeInteger"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v15

    const/4 v9, 0x5

    const-string v10, "unsignedLong"

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$20;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$21;

    const-class v7, Ljava/math/BigDecimal;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "decimal"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$21;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;

    const-class v7, Ljavax/xml/namespace/QName;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "QName"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const-string v6, "mapAnyUriToUri"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 830
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$23;

    const-class v7, Ljava/net/URI;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "anyURI"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$23;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_1
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$24;

    const-class v7, Ljavax/xml/datatype/Duration;

    new-array v8, v12, [Ljavax/xml/namespace/QName;

    const-string v9, "duration"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$24;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$25;

    const-class v7, Ljava/lang/Void;

    new-array v8, v11, [Ljavax/xml/namespace/QName;

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$25;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 872
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    :try_start_0
    new-instance v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$UUIDImpl;

    invoke-direct {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$UUIDImpl;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 883
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->builtinBeanInfos:Ljava/util/List;

    .line 900
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->init()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v6

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    .line 968
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFormatString:Ljava/util/Map;

    .line 971
    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFormatString:Ljava/util/Map;

    .line 973
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    const-string v7, "%Y-%M-%DT%h:%m:%s%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    const-string v7, "%Y-%M-%D%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    const-string v7, "%h:%m:%s%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    const-string v7, "--%M--%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    const-string v7, "---%D%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    const-string v7, "%Y%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    const-string v7, "%Y-%M%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    const-string v7, "--%M-%D%z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFieldRef:Ljava/util/Map;

    .line 996
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFieldRef:Ljava/util/Map;

    .line 997
    .local v0, "f":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/Integer;>;"
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    const v7, 0x1111111

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    const v7, 0x1111000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    const v7, 0x1000111

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    const v7, 0x1001000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    const/high16 v7, 0x1010000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    const/high16 v7, 0x1100000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    const/high16 v7, 0x1110000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    const v7, 0x1011000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    return-void

    .line 215
    .end local v0    # "f":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/Integer;>;"
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    .end local v3    # "primaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    .end local v4    # "qnames":[Ljavax/xml/namespace/QName;
    .end local v5    # "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    :cond_2
    const/16 v6, 0x9

    new-array v4, v6, [Ljavax/xml/namespace/QName;

    const-string v6, "string"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v11

    const-string v6, "anySimpleType"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v12

    const-string v6, "normalizedString"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v13

    const-string v6, "token"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v14

    const-string v6, "language"

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    aput-object v6, v4, v15

    const/4 v6, 0x5

    const-string v7, "Name"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "NCName"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "NMTOKEN"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "ENTITY"

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v4, v6

    goto/16 :goto_0

    .line 877
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    .restart local v3    # "primaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    .restart local v4    # "qnames":[Ljavax/xml/namespace/QName;
    .restart local v5    # "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<*>;>;"
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method private varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "typeNames"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 122
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/BuiltinLeafInfoImpl;-><init>(Ljava/lang/Object;[Ljavax/xml/namespace/QName;)V

    .line 123
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->LEAVES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$1;

    .prologue
    .line 118
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->decodeBase64(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljavax/xml/namespace/QName;Ljavax/xml/datatype/XMLGregorianCalendar;)V
    .locals 0
    .param p0, "x0"    # Ljavax/xml/namespace/QName;
    .param p1, "x1"    # Ljavax/xml/datatype/XMLGregorianCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/MarshalException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->checkXmlGregorianCalendarFieldRef(Ljavax/xml/namespace/QName;Ljavax/xml/datatype/XMLGregorianCalendar;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFormatString:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljavax/xml/datatype/DatatypeFactory;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method private static checkXmlGregorianCalendarFieldRef(Ljavax/xml/namespace/QName;Ljavax/xml/datatype/XMLGregorianCalendar;)V
    .locals 11
    .param p0, "type"    # Ljavax/xml/namespace/QName;
    .param p1, "cal"    # Ljavax/xml/datatype/XMLGregorianCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/MarshalException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v2, "buf":Ljava/lang/StringBuilder;
    sget-object v5, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFieldRef:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 914
    .local v1, "bitField":I
    const/4 v3, 0x1

    .line 915
    .local v3, "l":I
    const/4 v4, 0x0

    .line 916
    .local v4, "pos":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 917
    and-int/lit8 v0, v1, 0x1

    .line 918
    .local v0, "bit":I
    ushr-int/lit8 v1, v1, 0x4

    .line 919
    add-int/lit8 v4, v4, 0x1

    .line 921
    if-ne v0, v8, :cond_0

    .line 922
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 924
    :pswitch_0
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 925
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_SEC:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 929
    :pswitch_1
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 930
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_MIN:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 934
    :pswitch_2
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 935
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_HR:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 939
    :pswitch_3
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 940
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_DAY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 944
    :pswitch_4
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 945
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_MONTH:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 949
    :pswitch_5
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 950
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_YEAR:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 958
    .end local v0    # "bit":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 959
    new-instance v5, Lae/javax/xml/bind/MarshalException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XMLGREGORIANCALENDAR_INVALID:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 963
    :cond_2
    return-void

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static createXS(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 2
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v1, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeBase64(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 887
    instance-of v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 888
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .line 889
    .local v0, "base64Data":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getExact()[B

    move-result-object v1

    .line 891
    .end local v0    # "base64Data":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static init()Ljavax/xml/datatype/DatatypeFactory;
    .locals 4

    .prologue
    .line 904
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/Error;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/Messages;->FAILED_TO_INITIALE_DATATYPE_FACTORY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final getClazz()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->getType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 0

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    return-object p0
.end method

.method public getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDefault()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
