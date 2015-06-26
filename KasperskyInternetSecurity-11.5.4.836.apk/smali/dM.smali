.class public final LdM;
.super LdQ;
.source "SourceFile"


# instance fields
.field private g:LdJ;

.field private h:Ljava/util/TimerTask;

.field private i:Led;


# direct methods
.method public constructor <init>(Led;Ldj;I)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p2, p3}, LdQ;-><init>(Ldj;I)V

    .line 17
    new-instance v0, LdJ;

    invoke-direct {v0}, LdJ;-><init>()V

    iput-object v0, p0, LdM;->g:LdJ;

    .line 18
    new-instance v0, LdN;

    invoke-direct {v0, p0}, LdN;-><init>(LdM;)V

    iput-object v0, p0, LdM;->h:Ljava/util/TimerTask;

    .line 107
    iput-object p1, p0, LdM;->i:Led;

    .line 108
    return-void
.end method

.method static synthetic a(LdM;)LdJ;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, LdM;->g:LdJ;

    return-object v0
.end method

.method static synthetic a(LdM;I)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LdM;->a(I)V

    return-void
.end method

.method static synthetic b(LdM;)Led;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, LdM;->i:Led;

    return-object v0
.end method

.method static synthetic c(LdM;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, LdM;->i()V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, LdM;->h:Ljava/util/TimerTask;

    return-object v0
.end method
