.class final LvC;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:I

.field private synthetic b:LvB;


# direct methods
.method public constructor <init>(LvB;I)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, LvC;->b:LvB;

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 132
    iput p2, p0, LvC;->a:I

    .line 134
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, LvC;->b:LvB;

    invoke-static {v0}, LvB;->a(LvB;)[LvE;

    move-result-object v0

    iget v1, p0, LvC;->a:I

    aget-object v0, v0, v1

    iget-object v0, v0, LvE;->a:LvA;

    invoke-interface {v0}, LvA;->b()I

    .line 143
    iget-object v0, p0, LvC;->b:LvB;

    invoke-static {v0}, LvB;->a(LvB;)[LvE;

    move-result-object v0

    iget v1, p0, LvC;->a:I

    aget-object v0, v0, v1

    iget v0, v0, LvE;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, LvC;->b:LvB;

    invoke-static {v0}, LvB;->a(LvB;)[LvE;

    move-result-object v0

    iget v1, p0, LvC;->a:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, LvE;->a:LvA;

    .line 147
    :cond_0
    iget-object v0, p0, LvC;->b:LvB;

    invoke-static {v0}, LvB;->a(LvB;)[LvE;

    move-result-object v0

    iget v1, p0, LvC;->a:I

    aget-object v0, v0, v1

    iput v2, v0, LvE;->c:I

    .line 148
    iget-object v0, p0, LvC;->b:LvB;

    invoke-static {v0}, LvB;->a(LvB;)[LvE;

    move-result-object v0

    iget v1, p0, LvC;->a:I

    aget-object v0, v0, v1

    iput-boolean v2, v0, LvE;->b:Z

    .line 150
    return-void
.end method
