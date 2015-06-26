.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeAnyTypeImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;
.source "RuntimeAnyTypeImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;"
    }
.end annotation


# static fields
.field static final theInstance:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAnyTypeImpl;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAnyTypeImpl;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAnyTypeImpl;->theInstance:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;-><init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
