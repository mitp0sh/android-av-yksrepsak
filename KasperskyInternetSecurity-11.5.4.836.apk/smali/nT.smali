.class public final LnT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LnW;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:LnX;

.field private g:I

.field private h:Ljava/lang/Object;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;LnX;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;LnX;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, LnT;->d:I

    .line 22
    const-string v0, "Wait please..."

    iput-object v0, p0, LnT;->e:Ljava/lang/String;

    .line 24
    const/16 v0, 0x64

    iput v0, p0, LnT;->g:I

    .line 76
    new-instance v0, LnV;

    invoke-direct {v0, p0}, LnV;-><init>(LnT;)V

    iput-object v0, p0, LnT;->i:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, LnT;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, LnT;->f:LnX;

    .line 47
    iput p3, p0, LnT;->d:I

    .line 48
    iput-object p4, p0, LnT;->e:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, LnT;->h:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic a(LnT;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, LnT;->d:I

    return v0
.end method

.method static synthetic b(LnT;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(LnT;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, LnT;->g:I

    return v0
.end method

.method static synthetic d(LnT;)LnW;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LnT;->a:LnW;

    return-object v0
.end method

.method static synthetic e(LnT;)LnX;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LnT;->f:LnX;

    return-object v0
.end method

.method static synthetic f(LnT;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LnT;->h:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, LnT;->f:LnX;

    .line 55
    new-instance v0, LnU;

    iget-object v1, p0, LnT;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, LnU;-><init>(LnT;Landroid/content/Context;)V

    iput-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    .line 67
    iget-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    iget v1, p0, LnT;->d:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 68
    iget-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, LnT;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 70
    iget-object v0, p0, LnT;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 72
    new-instance v0, LnW;

    iget-object v1, p0, LnT;->i:Landroid/os/Handler;

    iget-object v2, p0, LnT;->f:LnX;

    invoke-direct {v0, p0, v1, v2}, LnW;-><init>(LnT;Landroid/os/Handler;LnX;)V

    iput-object v0, p0, LnT;->a:LnW;

    .line 73
    iget-object v0, p0, LnT;->a:LnW;

    invoke-virtual {v0}, LnW;->start()V

    .line 74
    return-void
.end method
