.class public abstract Lrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrw;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event object cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    if-nez p2, :cond_1

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event type cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lrv;->a:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lrv;->b:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lrv;->c:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lrv;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should be used only for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method protected final m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lrv;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lrv;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected final o()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lrv;->c:Ljava/lang/Object;

    return-object v0
.end method
