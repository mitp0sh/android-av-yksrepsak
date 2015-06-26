.class final Lfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj;


# instance fields
.field private synthetic a:Lfh;


# direct methods
.method private constructor <init>(Lfh;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lfi;->a:Lfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfh;B)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lfi;-><init>(Lfh;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lfi;->a:Lfh;

    invoke-static {v0}, Lfh;->a(Lfh;)V

    .line 150
    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
