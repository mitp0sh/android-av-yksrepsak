.class Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
.super Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassLoaderFinderConcrete"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;-><init>(Lae/javax/xml/stream/FactoryFinder$1;)V

    return-void
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
