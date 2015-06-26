.class public final Lrc;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/UsbConnectionListener;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/UsbConnectionListener;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lrc;->a:Lcom/kms/kmsshared/UsbConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lrc;->a:Lcom/kms/kmsshared/UsbConnectionListener;

    .line 45
    return-void
.end method
