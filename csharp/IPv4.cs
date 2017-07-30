using System.Runtime.InteropServices;

[StructLayout(LayoutKind.Explicit)]
public struct IPv4
{
    public IPv4(uint raw)
    {
        this._byte1 = 0;
        this._byte2 = 0;
        this._byte3 = 0;
        this._byte4 = 0;
        this._raw = raw;
    }

    public IPv4(byte byte1, byte byte2, byte byte3, byte byte4)
    {
        this._raw = 0;
        this._byte1 = byte1;
        this._byte2 = byte2;
        this._byte3 = byte3;
        this._byte4 = byte4;
    }

    [FieldOffset(0)]
    private uint _raw;

    [FieldOffset(0)]
    private byte _byte1;

    [FieldOffset(1)]
    private byte _byte2;

    [FieldOffset(2)]
    private byte _byte3;

    [FieldOffset(3)]
    private byte _byte4;

    public uint Raw
    {
        get => this._raw;
        set => this._raw = value;
    }
    public byte Byte1
    {
        get => this._byte1;
        set => this._byte1 = value;
    }
    public byte Byte2
    {
        get => this._byte2;
        set => this._byte2 = value;
    }
    public byte Byte3
    {
        get => this._byte3;
        set => this._byte3 = value;
    }
    public byte Byte4
    {
        get => this._byte4;
        set => this._byte4 = value;
    }

    public override string ToString()
    {
        return $"{this._byte1}.{this._byte2}.{this._byte3}.{this._byte4}";
    }

    public static implicit operator IPv4(uint value)
    {
        return new IPv4(value);
    }

    public static explicit operator uint(IPv4 ipv4)
    {
        return ipv4._raw;
    }

    public static readonly IPv4 Loopback = new IPv4(127, 0, 0, 0);

    public static readonly IPv4 Broadcast = new IPv4(255, 255, 255, 255);
}