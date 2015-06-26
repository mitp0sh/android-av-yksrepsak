.class final Lgl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Landroid/webkit/WebView;

.field private synthetic e:Lgi;


# direct methods
.method public constructor <init>(Lgi;ILjava/lang/String;ZLandroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lgl;->e:Lgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p2, p0, Lgl;->a:I

    .line 366
    iput-object p3, p0, Lgl;->b:Ljava/lang/String;

    .line 367
    iput-boolean p4, p0, Lgl;->c:Z

    .line 368
    iput-object p5, p0, Lgl;->d:Landroid/webkit/WebView;

    .line 369
    return-void
.end method

.method static synthetic a(Lgl;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lgl;->d:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lgl;)Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lgl;->c:Z

    return v0
.end method

.method static synthetic b(Lgl;)I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lgl;->a:I

    return v0
.end method

.method static synthetic c(Lgl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lgl;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lgl;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lgl;->d:Landroid/webkit/WebView;

    return-object v0
.end method
