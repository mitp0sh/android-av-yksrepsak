.class public abstract Lae/com/sun/xml/bind/api/ClassResolver;
.super Ljava/lang/Object;
.source "ClassResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract resolveElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
