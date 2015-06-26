.class final LhE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:LhH;

.field private synthetic c:LhD;


# direct methods
.method public constructor <init>(LhD;LhH;)V
    .locals 1

    .prologue
    .line 17
    iput-object p1, p0, LhE;->c:LhD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, LhE;->b:LhH;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, LhE;->a:I

    .line 20
    return-void
.end method
