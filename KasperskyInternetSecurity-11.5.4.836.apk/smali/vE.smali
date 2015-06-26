.class final LvE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LvA;

.field public b:Z

.field public c:I

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic e:LvB;


# direct methods
.method public constructor <init>(LvB;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-object p1, p0, LvE;->e:LvB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, LvE;->a:LvA;

    .line 53
    iput v1, p0, LvE;->c:I

    .line 54
    iput-boolean v1, p0, LvE;->b:Z

    .line 55
    return-void
.end method
