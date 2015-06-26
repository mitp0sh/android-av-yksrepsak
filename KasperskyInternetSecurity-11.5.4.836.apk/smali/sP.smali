.class public final LsP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax;


# instance fields
.field private final a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, LsP;->a:Lrx;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lay;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, LsP;->a:Lrx;

    sget-object v1, Lcom/kms/licensing/LicenseEventType;->StateChanged:Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v1, p1}, Lcom/kms/licensing/LicenseEventType;->newEvent(Ljava/lang/Object;)LsZ;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 18
    return-void
.end method
