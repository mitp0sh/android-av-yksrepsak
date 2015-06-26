.class final Lae/com/sun/xml/bind/v2/ClassFactory$1;
.super Ljava/lang/ThreadLocal;
.source "ClassFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/ClassFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Class;",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/reflect/Constructor;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/ClassFactory$1;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method
