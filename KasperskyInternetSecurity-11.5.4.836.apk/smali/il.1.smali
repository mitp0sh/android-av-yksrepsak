.class public abstract Lil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lik;


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lik;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p3, p4}, Lik;-><init>(IIIZ)V

    iput-object v0, p0, Lil;->a:Lik;

    .line 39
    return-void
.end method
