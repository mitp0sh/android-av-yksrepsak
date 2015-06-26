.class public interface abstract Lae/com/sun/xml/bind/api/impl/NameConverter;
.super Ljava/lang/Object;
.source "NameConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;
    }
.end annotation


# static fields
.field public static final jaxrpcCompatible:Lae/com/sun/xml/bind/api/impl/NameConverter;

.field public static final smart:Lae/com/sun/xml/bind/api/impl/NameConverter;

.field public static final standard:Lae/com/sun/xml/bind/api/impl/NameConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;

    invoke-direct {v0}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->standard:Lae/com/sun/xml/bind/api/impl/NameConverter;

    .line 264
    new-instance v0, Lae/com/sun/xml/bind/api/impl/NameConverter$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/api/impl/NameConverter$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->jaxrpcCompatible:Lae/com/sun/xml/bind/api/impl/NameConverter;

    .line 282
    new-instance v0, Lae/com/sun/xml/bind/api/impl/NameConverter$2;

    invoke-direct {v0}, Lae/com/sun/xml/bind/api/impl/NameConverter$2;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/api/impl/NameConverter;->smart:Lae/com/sun/xml/bind/api/impl/NameConverter;

    return-void
.end method


# virtual methods
.method public abstract toClassName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toConstantName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toPropertyName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toVariableName(Ljava/lang/String;)Ljava/lang/String;
.end method
